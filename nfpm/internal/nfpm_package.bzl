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
        ),
        "deps": attr.label_list(
            allow_files = True,
        ),
        "_nfpm": attr.label(
            default = "//go/cmd/nfpmwrapper",
            cfg = "host",
            executable = True,
        ),
    },
)
