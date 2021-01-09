load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def rules_nfpm_dependencies():
    maybe(
        http_archive,
        name = "io_bazel_rules_go",
        sha256 = "75c97f089190833ee58872238c98394267d35c32baabf42aac0827102b62af6b",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.24.8/rules_go-v0.24.8.tar.gz",
            "https://github.com/bazelbuild/rules_go/releases/download/v0.24.8/rules_go-v0.24.8.tar.gz",
        ],
    )

    maybe(
        http_archive,
        name = "bazel_gazelle",
        sha256 = "222e49f034ca7a1d1231422cdb67066b885819885c356673cb1f72f748a3c9d4",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.22.3/bazel-gazelle-v0.22.3.tar.gz",
            "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.22.3/bazel-gazelle-v0.22.3.tar.gz",
        ],
    )
