package nfpmwrapper

import (
	"bufio"
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

const (
	FormatDeb = "deb"
	FormatRPM = "rpm"
)

var extensionFormatMap = map[string]string{
	".deb": FormatDeb,
	".rpm": FormatRPM,
}

type ConfigTemplateData struct {
	StableStatus   map[string]string
	VolatileStatus map[string]string
	Dependencies   map[string]string
}

type Cmd struct {
	Config         string   `name:"config" type:"existingfile"`
	StableStatus   string   `name:"stable-status" type:"existingfile"`
	VolatileStatus string   `name:"volatile-status" type:"existingfile"`
	Deps           []string `name:"dep"`
	Output         string   `arg`
}

func (c *Cmd) Run() error {
	extension := filepath.Ext(c.Output)
	packageFormat, ok := extensionFormatMap[extension]

	if !ok {
		return errors.Errorf("unknown extension: '%s'", extension)
	}

	generatedNFPMConfig, err := c.generateNFPMConfig()

	if err != nil {
		return err
	}

	nfpmConfig, err := nfpm.Parse(strings.NewReader(generatedNFPMConfig))

	if err != nil {
		return errors.Wrap(err, "error parsing generated config")
	}

	packageInfo, err := nfpmConfig.Get(packageFormat)

	if err != nil {
		return errors.Wrapf(err, "error getting package-specific config for format '%s'", packageFormat)
	}

	packageFile, err := os.Create(c.Output)

	if err != nil {
		return errors.Wrapf(err, "error creating package file")
	}

	packager, err := nfpm.Get(packageFormat)

	if err != nil {
		return errors.Wrapf(err, "error getting packager for format '%s'", packageFormat)
	}

	if err := packager.Package(packageInfo, packageFile); err != nil {
		return errors.Wrapf(err, "error generating %s package", packageFormat)
	}

	return nil
}

func (c *Cmd) generateNFPMConfig() (string, error) {
	stableFile, err := os.Open(c.StableStatus)

	if err != nil {
		return "", errors.Wrap(err, "error opening non-volatile bazel workspace status file")
	}

	stableStatus, err := parseWorkspaceStatus(stableFile)

	if err != nil {
		return "", errors.Wrapf(err, "error parsing workspace status keys in '%s'", stableFile.Name())
	}

	volatileFile, err := os.Open(c.VolatileStatus)

	if err != nil {
		return "", errors.Wrap(err, "error opening volatile bazel workspace status file")
	}

	volatileStatus, err := parseWorkspaceStatus(volatileFile)

	if err != nil {
		return "", errors.Wrapf(err, "error parsing workspace status keys in '%s'", volatileFile.Name())
	}

	dependencies, err := parseDeps(c.Deps)

	if err != nil {
		return "", err
	}

	config, err := ioutil.ReadFile(c.Config)

	if err != nil {
		return "", errors.Wrap(err, "error reading config template")
	}

	t, err := template.New("nfpm-config").Parse(string(config))

	if err != nil {
		return "", errors.Wrap(err, "error parsing config template")
	}

	builder := strings.Builder{}

	templateData := ConfigTemplateData{
		StableStatus:   stableStatus,
		VolatileStatus: volatileStatus,
		Dependencies:   dependencies,
	}

	if err := t.Execute(&builder, templateData); err != nil {
		return "", errors.Wrap(err, "error generating config")
	}

	return builder.String(), nil
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
