# rules_nfpm

`rules_nfpm` provides rules for building 'deb' and 'rpm' packages using [NFPM](https://github.com/goreleaser/nfpm/), a packager written in Go.

While [rules_pkg](https://github.com/bazelbuild/rules_pkg/) _works_, `rules_nfpm` has the following advantages:

- Clear documentation
- No host dependencies (e.g. `rpmbuild` is not needed in `PATH`)
- Built-in templating of Bazel [workspace status](https://docs.bazel.build/versions/master/user-manual.html#workspace_status) key-value pairs

## Setup

Include the following snippet in your repository's WORKSPACE file:

```starlark
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "com_github_ericnorris_rules_nfpm",
    sha256 = "761afa3f4e82dbed90b6b76c82bee8e7661bb8b7a51ac538daa0191b6252a914",
    urls = [
        "https://github.com/ericnorris/rules_nfpm/archive/v1.0.0.tar.gz",
    ],
    strip_prefix = "rules_nfpm-1.0.0",
)

load("@com_github_ericnorris_rules_nfpm//nfpm:repositories.bzl", "rules_nfpm_dependencies")

rules_nfpm_dependencies()

load("@com_github_ericnorris_rules_nfpm//nfpm:setup.bzl", "rules_nfpm_setup")

rules_nfpm_setup()

load("@com_github_ericnorris_rules_nfpm//nfpm:go_repositories.bzl", "rules_nfpm_go_dependencies")

rules_nfpm_go_dependencies()
```

