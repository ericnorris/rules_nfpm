package nfpmwrapper

import (
	"flag"
	"io/ioutil"
	"os"
	"testing"

	"github.com/google/go-cmp/cmp"
)

var (
	accept = flag.Bool("accept", false, "update .golden files")
)

const (
	generateConfigDir = "./testdata/generateconfig"
)

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
