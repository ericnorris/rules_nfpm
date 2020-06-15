load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def rules_nfpm_internal_dependencies():
    _buildifier_dependencies()
    _skylib_dependencies()
    _stardoc_dependencies()

def _buildifier_dependencies():
    maybe(
        http_archive,
        name = "com_github_bazelbuild_buildtools",
        strip_prefix = "buildtools-master",
        url = "https://github.com/bazelbuild/buildtools/archive/master.zip",
    )

    maybe(
        http_archive,
        name = "com_google_protobuf",
        strip_prefix = "protobuf-master",
        urls = ["https://github.com/protocolbuffers/protobuf/archive/master.zip"],
    )

def _skylib_dependencies():
    maybe(
        http_archive,
        name = "bazel_skylib",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz",
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz",
        ],
        sha256 = "97e70364e9249702246c0e9444bccdc4b847bed1eb03c5a3ece4f83dfe6abc44",
    )

def _stardoc_dependencies():
    maybe(
        http_archive,
        name = "io_bazel_stardoc",
        urls = [
            "https://github.com/bazelbuild/stardoc/archive/1ef781ced3b1443dca3ed05dec1989eca1a4e1cd.zip",
        ],
        strip_prefix = "stardoc-1ef781ced3b1443dca3ed05dec1989eca1a4e1cd",
        sha256 = "5d7191bb0800434a9192d8ac80cba4909e96dbb087c5d51f168fedd7bde7b525",
    )
