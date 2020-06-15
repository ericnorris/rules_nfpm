def _nfpm_package_impl(ctx):
    package_file = ctx.actions.declare_file(ctx.label.name)

    if package_file.extension not in ["deb", "rpm"]:
        fail("unknown package format: " + package_file.extension)

    nfpm_args = ctx.actions.args()

    nfpm_args.add("--config", ctx.file.config)
    nfpm_args.add("--stable-status", ctx.info_file)
    nfpm_args.add("--volatile-status", ctx.version_file)
    nfpm_args.add_all(ctx.files.deps, before_each = "--dep", map_each = _format_dep)
    nfpm_args.add(package_file.path)

    nfpm_files = [
        ctx.file.config,
        ctx.info_file,
        ctx.version_file,
    ] + ctx.files.deps

    ctx.actions.run(
        mnemonic = "NFPMPkg",
        executable = ctx.executable._nfpm,
        arguments = [nfpm_args],
        inputs = nfpm_files,
        outputs = [package_file],
    )

    return [DefaultInfo(files = depset([package_file]))]

def _format_dep(file):
    return "{}={}".format(file.owner, file.path)

nfpm_package = rule(
    _nfpm_package_impl,
    attrs = {
        "config": attr.label(
            mandatory = True,
            allow_single_file = True,
            doc = "NFPM configuration file template."
        ),
        "deps": attr.label_list(
            allow_files = True,
            doc = "Dependencies for this target. The output path of each dependency will be available in the `.Dependencies` map in the configuration file template, keyed by the dependency's label."
        ),
        "_nfpm": attr.label(
            default = "//go/cmd/nfpmwrapper",
            cfg = "host",
            executable = True,
        ),
    },
    doc = """
Generates a package using [NFPM](https://github.com/goreleaser/nfpm/).

The config file is templatized using the `go` [text/template](https://golang.org/pkg/text/template/) library. The dot (`.`) value is a [ConfigTemplateData](https://pkg.go.dev/github.com/ericnorris/rules_nfpm/go/internal/cmd/nfpmwrapper?tab=doc#ConfigTemplateData) struct.

### Example

```starlark
nfpm_package(
    name = "helloworld.deb",
    config = "helloworld.yaml",
    deps = [
        "//cmd/helloworld",
    ],
)
```

See the [example directory](/example/README.md) for a more comprehensive example.
"""
)
