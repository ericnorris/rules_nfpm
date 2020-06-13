load("@bazel_skylib//lib:unittest.bzl", "asserts", "analysistest")
load(":nfpm_package.bzl", "nfpm_package")

def _provider_contents_test_impl(ctx):
    env = analysistest.begin(ctx)

    target_under_test = analysistest.target_under_test(env)

    want = "nfpm/internal/provider_contents_package.rpm"
    got = target_under_test[DefaultInfo].files.to_list()[0].short_path

    asserts.equals(env, want, got)

    return analysistest.end(env)

provider_contents_test = analysistest.make(_provider_contents_test_impl)

def _test_provider_contents():
    nfpm_package(
        name = "provider_contents_package.rpm",
        config = "not-a-real-config.yaml",
        tags = ["manual"]
    )

    provider_contents_test(
        name = "provider_contents_test",
        target_under_test = ":provider_contents_package.rpm",
        size = "small",
    )

def _inspect_actions_test_impl(ctx):
    env = analysistest.begin(ctx)

    target_under_test = analysistest.target_under_test(env)

    actions = analysistest.target_actions(env)

    asserts.equals(env, 1, len(actions))

    pkg_action = actions[0]
    pkg_output = pkg_action.outputs.to_list()[0]

    want_args = [
        "--config", "nfpm/internal/not-a-real-config.yaml",
        "--stable-status", "bazel-out/stable-status.txt",
        "--volatile-status", "bazel-out/volatile-status.txt",
        "--dep", "//nfpm/internal:not-a-real-dep=nfpm/internal/not-a-real-dep",
        pkg_output.path,
    ]

    got_args = pkg_action.argv[1:]

    asserts.equals(env, want_args, got_args)

    return analysistest.end(env)

inspect_actions_test = analysistest.make(_inspect_actions_test_impl)

def _test_inspect_actions():
    nfpm_package(
        name = "inspect_actions_package.rpm",
        config = "not-a-real-config.yaml",
        deps = [
            ":not-a-real-dep",
        ],
        tags = ["manual"]
    )

    inspect_actions_test(
        name = "inspect_actions_test",
        target_under_test = ":inspect_actions_package.rpm",
        size = "small",
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
