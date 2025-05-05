load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def rules_nfpm_dependencies():
    maybe(
        http_archive,
        name = "io_bazel_rules_go",
        sha256 = "26639dcac4358e97afc9798a31d5d1136cd7ddaec72cd6bb121b56e9399513bc",
        strip_prefix = "rules_go-41a5b9f9d54b174391a2076fe3906c0371bfbcde",
        urls = [
            "https://github.com/patrickmscott/rules_go/archive/41a5b9f9d54b174391a2076fe3906c0371bfbcde.tar.gz",
        ],
    )
    http_archive(
        name = "rules_license",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_license/releases/download/1.0.0/rules_license-1.0.0.tar.gz",
            "https://github.com/bazelbuild/rules_license/releases/download/1.0.0/rules_license-1.0.0.tar.gz",
        ],
        sha256 = "26d4021f6898e23b82ef953078389dd49ac2b5618ac564ade4ef87cced147b38",
    )
    http_archive(
        name = "bazel_skylib",
        sha256 = "bc283cdfcd526a52c3201279cda4bc298652efa898b10b4db0837dc51652756f",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.7.1/bazel-skylib-1.7.1.tar.gz",
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.7.1/bazel-skylib-1.7.1.tar.gz",
        ],
    )
    maybe(
        http_archive,
        name = "bazel_gazelle",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.43.0/bazel-gazelle-v0.43.0.tar.gz",
            "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.43.0/bazel-gazelle-v0.43.0.tar.gz",
        ],
        sha256 = "7c40b746387cd0c9a4d5bb0b2035abd134b3f7511015710a5ee5e07591008dde",
    )
    maybe(
        http_archive,
        name = "aspect_bazel_lib",
        sha256 = "2be8a5df0b20b0ed37604b050da01dbf7ad45ad44768c0d478b64779b9f58412",
        strip_prefix = "bazel-lib-2.15.3",
        url = "https://github.com/bazel-contrib/bazel-lib/releases/download/v2.15.3/bazel-lib-v2.15.3.tar.gz",
    )
