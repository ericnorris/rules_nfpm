workspace(name = "com_github_ericnorris_rules_nfpm")

load("//nfpm:repositories.bzl", "rules_nfpm_dependencies")

rules_nfpm_dependencies()

load("//nfpm:go_repositories.bzl", "rules_nfpm_go_dependencies")

# the nogo parameter is not needed by users of rules_nfpm
# gazelle:repository_macro nfpm/go_repositories.bzl%_rules_nfpm_go_repositories
rules_nfpm_go_dependencies(nogo = "@//:rules_nfpm_nogo")

#
# Dependencies not needed by users of rules_nfpm
#

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "com_github_bazelbuild_buildtools",
    strip_prefix = "buildtools-master",
    url = "https://github.com/bazelbuild/buildtools/archive/master.zip",
)

http_archive(
    name = "com_google_protobuf",
    strip_prefix = "protobuf-master",
    urls = ["https://github.com/protocolbuffers/protobuf/archive/master.zip"],
)

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")

protobuf_deps()
