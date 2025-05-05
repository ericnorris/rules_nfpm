load("@aspect_bazel_lib//lib:transitions.bzl", "platform_transition_filegroup")

def _nfpm_package_impl(ctx):
    package_file = ctx.actions.declare_file(ctx.label.name)

    if package_file.extension not in ["deb", "rpm"]:
        fail("unknown package format: " + package_file.extension)


    expanded_envs = {}
    for k,v in ctx.attr.envs.items():
        expanded_envs[k]=ctx.expand_location(v, ctx.attr.deps)

    nfpm_args = ctx.actions.args()

    nfpm_args.add("--config", ctx.file.config)
    nfpm_args.add("--stable-status", ctx.info_file)
    nfpm_args.add("--volatile-status", ctx.version_file)
    if ctx.attr.arch != '':
        nfpm_args.add("--arch", ctx.attr.arch)
    nfpm_args.add_all(ctx.files.deps, before_each = "--dep", map_each = _format_dep)
    nfpm_args.add_all(expanded_envs.items(), before_each = "--env", map_each = _format_env)
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
    file_owner_str = str(file.owner)
    if file_owner_str.startswith("@//"):
        # Since bazel 7+, owner for consistency started to be prefixed with '@' - even in case of a local repository.
        # To avoid need to change existing config files, we bring back the '//package/...' notation for within-repo
        # targets.
        file_owner_str = file_owner_str.removeprefix("@")
    return "{}={}".format(file_owner_str, file.path)

def _format_env(kv):
  key, value = kv
  return "{}={}".format(key, value)

_nfpm_package = rule(
    _nfpm_package_impl,
    attrs = {
        "config": attr.label(
            mandatory = True,
            allow_single_file = True,
            doc = "NFPM configuration file template.",
        ),
        "deps": attr.label_list(
            allow_files = True,
            doc = "Dependencies for this target. The output path of each dependency will be available in the `.Dependencies` map in the configuration file template, keyed by the dependency's label.",
        ),
        "arch": attr.string(
            doc = "The architecture: `all`, `amd64`, `386`, `arm5`, `arm6`, `arm7`, `arm64`, `mips`, `mipsle`, `mips64le`, `ppc64le`, `s390`. Refer by `.Arch` during template evaluation."
        ),
        "envs": attr.string_dict(
            doc = "Environment available during configuration template evaluation. Access using `.Envs`."
        ),
        "_nfpm": attr.label(
            default = "//go/v2/cmd/nfpmwrapper",
            cfg = "exec",
            executable = True,
        ),
    },
    doc = "See documentation for nfpm_package.",
)

def nfpm_package(name, config, deps=[], envs={}, arch=None, **kwargs):
    """Generates a package using [NFPM](https://github.com/goreleaser/nfpm/).

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
    if arch == None: 
        # By default pick target bazel architecture.
        arch = select({
            "@platforms//cpu:all": "all",
            "@platforms//cpu:aarch64": "arm64",
            "@platforms//cpu:x86_64": "amd64",
            "@platforms//cpu:x86_32": "386",
        })

    return _nfpm_package(name = name, config = config, deps = deps, arch = arch, envs=envs, **kwargs)
    

def nfpm_packages(name, archs, visibility = [], tags = [], **kwargs):
    """Generates a packages using [NFPM](https://github.com/goreleaser/nfpm/) for given list of architectures.

    Args:
      name: name of filegroup owning all architectures
      archs: map from taget name into @platform
      visibility: visilibity of the produced targets
      tags: additional tags for the produced targets
      **kwargs: other arguments passed to nfpm_package.
    """
    name_tmpl = "_" + name
    nfpm_package(
        name=name_tmpl,
        visibility=["//visibility:private"],
        tags = ["manual"] + tags,
        **kwargs)
    srcs = []
    for (aname, aplatform) in archs.items():
        platform_transition_filegroup(name = aname, srcs=[name_tmpl], target_platform = aplatform)
        srcs.append(aname)
    native.filegroup(
        name = name,
        srcs = srcs,
    )