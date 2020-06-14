load("@bazel_skylib//lib:unittest.bzl", "analysistest", "asserts")
load("//nfpm:defs.bzl", "nfpm_package")

def _provider_contents_test_impl(ctx):
    env = analysistest.begin(ctx)

    target_under_test = analysistest.target_under_test(env)

    want = "{}/provider_contents.rpm".format(ctx.label.package)
    got = target_under_test[DefaultInfo].files.to_list()[0].short_path

    asserts.equals(env, want, got)

    return analysistest.end(env)

provider_contents_test = analysistest.make(_provider_contents_test_impl)

def _test_provider_contents():
    nfpm_package(
        name = "provider_contents.rpm",
        config = "not-a-real-config.yaml",
        tags = ["manual"],
    )

    provider_contents_test(
        name = "provider_contents_test",
        target_under_test = ":provider_contents.rpm",
        size = "small",
    )

def _inspect_actions_test_impl(ctx):
    env = analysistest.begin(ctx)

    target_under_test = analysistest.target_under_test(env)

    print(dir(target_under_test))

    actions = analysistest.target_actions(env)

    asserts.equals(env, 1, len(actions))

    pkg_action = actions[0]
    pkg_output = pkg_action.outputs.to_list()[0]

    dep_file = ctx.files.nfpm_package_deps[0]

    want_args = [
        "--config",
        "{}/not-a-real-config.yaml".format(ctx.label.package),
        "--stable-status",
        "bazel-out/stable-status.txt",
        "--volatile-status",
        "bazel-out/volatile-status.txt",
        "--dep",
        "{}={}".format(dep_file.owner, dep_file.path),
        pkg_output.path,
    ]

    got_args = pkg_action.argv[1:]

    asserts.equals(env, want_args, got_args)

    return analysistest.end(env)

inspect_actions_test = analysistest.make(
    _inspect_actions_test_impl,
    attrs = {
        "nfpm_package_deps": attr.label_list(
            allow_files = True,
        ),
    },
)

def _test_inspect_actions():
    native.genrule(
        name = "inspect_actions_dependency",
        srcs = [],
        outs = ["inspect_actions_test.txt"],
        cmd = "echo 'hello world' > $@",
        tags = ["manual"],
    )

    deps = [
        ":inspect_actions_dependency",
    ]

    nfpm_package(
        name = "inspect_actions.rpm",
        config = "not-a-real-config.yaml",
        deps = deps,
        tags = ["manual"],
    )

    inspect_actions_test(
        name = "inspect_actions_test",
        target_under_test = ":inspect_actions.rpm",
        size = "small",
        nfpm_package_deps = deps,
    )

def nfpm_package_test_suite(name):
    _test_provider_contents()
    _test_inspect_actions()

    native.test_suite(
        name = name,
        tests = [
            ":provider_contents_test",
            ":inspect_actions_test",
        ],
    )
