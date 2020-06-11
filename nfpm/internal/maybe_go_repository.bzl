load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_gazelle//:deps.bzl", "go_repository")

def maybe_go_repository(**kwargs):
    maybe(go_repository, **kwargs)
