def _nfpm_package_impl(ctx):
    package_file = ctx.actions.declare_file("{name}".format(name = ctx.label.name))

    nfpm_args = ctx.actions.args()

    nfpm_args.add("--config", ctx.file.config.path)
    nfpm_args.add("--info-file", ctx.info_file.path)
    nfpm_args.add("--version-file", ctx.version_file.path)
    nfpm_args.add_all(ctx.files.deps, before_each = "--dep", map_each = _format_arc)
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

def _format_arc(file):
    return "{}={}".format(file.owner, file.path)

nfpm_package = rule(
    _nfpm_package_impl,
    attrs = {
        "config": attr.label(
            mandatory = True,
            allow_single_file = True,
        ),
        "deps": attr.label_list(
            mandatory = True,
            allow_files = True,
        ),
        "_nfpm": attr.label(
            default = "@//go/cmd/nfpmwrapper",
            cfg = "host",
            executable = True,
        ),
    },
)
