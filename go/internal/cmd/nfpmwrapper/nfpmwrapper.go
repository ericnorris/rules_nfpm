package nfpmwrapper

import (
	"bufio"
	"fmt"
	"io"
	"io/ioutil"
	"os"
	"path/filepath"
	"strings"
	"text/template"

	"github.com/goreleaser/nfpm"
	_ "github.com/goreleaser/nfpm/deb"
	_ "github.com/goreleaser/nfpm/rpm"
	"github.com/pkg/errors"
)

type Cmd struct {
	Config      string   `name:"config" type:"existingfile"`
	InfoFile    string   `name:"info-file" type:"existingfile"`
	VersionFile string   `name:"version-file" type:"existingfile"`
	Deps        []string `name:"dep"`
	Output      string   `arg`
}

func (c *Cmd) Run() error {
	info, _ := os.Open(c.InfoFile)

	infoEntries, _ := parseWorkspaceStatus(info)

	version, _ := os.Open(c.VersionFile)

	versionEntries, _ := parseWorkspaceStatus(version)

	fmt.Println(infoEntries)
	fmt.Println(versionEntries)

	bazelDeps, _ := parseDeps(c.Deps)

	fmt.Println(bazelDeps)

	config, _ := ioutil.ReadFile(c.Config)

	t, err := template.New("nfpm-config").Parse(string(config))

	if err != nil {
		return errors.Wrap(err, "error parsing config template")
	}

	builder := strings.Builder{}

	templateData := ConfigTemplateData{
		InfoFile:     infoEntries,
		VersionFile:  versionEntries,
		Dependencies: bazelDeps,
	}

	if err := t.Execute(&builder, templateData); err != nil {
		return errors.Wrap(err, "error executing config template")
	}

	fmt.Println(builder.String())

	parsedConfig, err := nfpm.Parse(strings.NewReader(builder.String()))

	if err != nil {
		return errors.Wrap(err, "error parsing generated config")
	}

	format := filepath.Ext(c.Output)[1:]

	packageInfo, _ := parsedConfig.Get(format)

	out, _ := os.Create(c.Output)

	packager, err := nfpm.Get(format)

	if err != nil {
		return errors.Wrapf(err, "error getting packager for format '%s'", format)
	}

	if err := packager.Package(packageInfo, out); err != nil {
		return errors.Wrapf(err, "error generating %s package", format)
	}

	return nil
}

type ConfigTemplateData struct {
	InfoFile     map[string]string
	VersionFile  map[string]string
	Dependencies map[string]string
}

func parseWorkspaceStatus(r io.ReadCloser) (map[string]string, error) {
	defer r.Close()

	scanner := bufio.NewScanner(r)
	entries := make(map[string]string)

	for scanner.Scan() {
		keyValuePair := strings.SplitN(scanner.Text(), " ", 2)

		if len(keyValuePair) != 2 {
			return nil, errors.Errorf("found malformed workspace status key/value pair: '%s'", scanner.Text())
		}

		entries[keyValuePair[0]] = keyValuePair[1]
	}

	if err := scanner.Err(); err != nil {
		return nil, errors.Wrap(err, "error reading workspace status")
	}

	return entries, nil
}

func parseDeps(deps []string) (map[string]string, error) {
	bazelDeps := make(map[string]string)

	for _, dep := range deps {
		labelPathPair := strings.SplitN(dep, "=", 2)

		if len(labelPathPair) != 2 {
			return nil, errors.Errorf("found malformed dep label/path pair: '%s'", dep)
		}

		bazelDeps[labelPathPair[0]] = labelPathPair[1]
	}

	return bazelDeps, nil
}
