package nfpmwrapper

import (
	"flag"
	"io/ioutil"
	"os"
	"strings"
	"testing"

	"github.com/google/go-cmp/cmp"
	"github.com/google/go-cmp/cmp/cmpopts"
)

var (
	accept = flag.Bool("accept", false, "update .golden files")
)

const (
	generateConfigDir = "./testdata/generateconfig"
)

var sortStringMapsOption = cmpopts.SortMaps(func(a, b string) bool { return a < b })

func TestParseWorkspaceStatus(t *testing.T) {
	workspaceStatusContents := `BUILD_EMBED_LABEL 
BUILD_HOST hostname.example.com
BUILD_USER user`

	want := map[string]string{
		"BUILD_EMBED_LABEL": "",
		"BUILD_HOST":        "hostname.example.com",
		"BUILD_USER":        "user",
	}

	got, err := parseWorkspaceStatus(ioutil.NopCloser(strings.NewReader(workspaceStatusContents)))

	if err != nil {
		t.Fatalf("unexpected error: %s", err)
	}

	if diff := cmp.Diff(want, got, sortStringMapsOption); diff != "" {
		t.Errorf("parseWorkspaceStatus() mismatch (-want +got):\n%s", diff)
	}
}

func TestParseDeps(t *testing.T) {
	deps := []string{"//package:target=path/to/output"}

	want := map[string]string{
		"//package:target": "path/to/output",
	}

	got, err := parseDeps(deps)

	if err != nil {
		t.Fatalf("unexpected error: %s", err)
	}

	if diff := cmp.Diff(want, got, sortStringMapsOption); diff != "" {
		t.Errorf("parseDeps() mismatch (-want +got):\n%s", diff)
	}
}

func TestGenerateNFPMConfig(t *testing.T) {
	cwd, _ := os.Getwd()

	t.Log(cwd)

	cmd := Cmd{
		Config:         generateConfigDir + "/config.yaml.in",
		StableStatus:   generateConfigDir + "/stable-status.txt.in",
		VolatileStatus: generateConfigDir + "/volatile-status.txt.in",
		Deps:           []string{"//:example.txt=example.txt"},
	}

	wantBytes, err := ioutil.ReadFile(generateConfigDir + "/config.yaml.golden")

	if err != nil {
		t.Fatalf("unexpected error: %s", err)
	}

	want := string(wantBytes)

	got, err := cmd.generateNFPMConfig()

	if err != nil {
		t.Fatalf("unexpected error: %s", err)
	}

	if diff := cmp.Diff(want, got); diff != "" {
		if *accept {
			if err := ioutil.WriteFile(generateConfigDir+"/config.yaml.golden", []byte(got), 0666); err != nil {
				t.Fatalf("unexpected error: %s", err)
			}

			return
		}

		t.Errorf("generateNFPMConfig() mismatch (-want +got):\n%s", diff)
		t.Log("run the .accept version of this bazel target to accept this diff")
	}
}
