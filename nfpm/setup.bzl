load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

def rules_nfpm_setup(nogo = None):
    go_rules_dependencies()
    go_register_toolchains(nogo = nogo)

    gazelle_dependencies()
