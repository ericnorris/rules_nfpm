package nfpmwrapper

import (
	"bufio"
	"io"
	"io/ioutil"
	"os"
	"path/filepath"
	"strings"
	"text/template"

	"github.com/goreleaser/nfpm/v2"
	_ "github.com/goreleaser/nfpm/v2/deb"
	_ "github.com/goreleaser/nfpm/v2/rpm"
	"github.com/pkg/errors"
)

// Package formats supported by this wrapper and NFPM.
const (
	FormatDeb = "deb"
	FormatRPM = "rpm"
)

// ExtensionFormatMap is a map of package extension to package format.
var ExtensionFormatMap = map[string]string{
	".deb": FormatDeb,
	".rpm": FormatRPM,
}

// ConfigTemplateData is the data available for use inside of the NFPM YAML
// config.
type ConfigTemplateData struct {
	// StableStatus contains the key-value pairs in stable-status.txt. See
	// https://docs.bazel.build/versions/master/user-manual.html#workspace_status
	// for details.
	StableStatus map[string]string

	// VolatileStatus contains the key-value pairs in volatile-status.txt. See
	// https://docs.bazel.build/versions/master/user-manual.html#workspace_status
	// for details.
	VolatileStatus map[string]string

	// Dependencies is a map of a bazel dependencies. The map key is the label
	// of the dependency, and the map value is the dependency's path. For
	// example, "//path/to/package:target": "path/to/output".
	Dependencies map[string]string
	// Target platform x86_64 or aarch64
	Platform string
}

// Cmd is a struct defining parameters for templating an NFPM config and
// generating a package using NFPM.
type Cmd struct {
	// Config is the path to a config file that will be used as a template.
	Config string `name:"config" type:"existingfile"`

	// StableStatus and Volatile status are paths to bazel's workspace status
	// files.
	StableStatus   string `name:"stable-status" type:"existingfile"`
	VolatileStatus string `name:"volatile-status" type:"existingfile"`

	// Deps is an array of label-path pairs, delimited by an equals (=) sign.
	Deps []string `name:"dep"`

	Platform string

	// Output is the desired path for the generated package. The extension is
	// used to lookup the package format in ExtensionFormatMap.
	Output string `arg`
}

// Run uses the value of the Cmd struct and generates a DEB or RPM package using
// NFPM. The specified config value is executed as a text/template template in
// order to populate the file with information from bazel.
func (c *Cmd) Run() error {
	extension := filepath.Ext(c.Output)
	packageFormat, ok := ExtensionFormatMap[extension]

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
		Platform:       c.Platform,
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
		bazelDeps[strings.Trim(labelPathPair[0], "'@")] = strings.Trim(labelPathPair[1], "'")
	}

	return bazelDeps, nil
}
