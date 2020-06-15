# rules_nfpm

`rules_nfpm` provides rules for building 'deb' and 'rpm' packages using [NFPM](https://github.com/goreleaser/nfpm/), a packager written in Go.

While [rules_pkg](https://github.com/bazelbuild/rules_pkg/) _works_, `rules_nfpm` has the following advantages:

- Clear documentation
- No host dependencies (e.g. `rpmbuild` is not needed in `PATH`)
- Built-in templating of Bazel [workspace status](https://docs.bazel.build/versions/master/user-manual.html#workspace_status) key-value pairs

## Setup

tktktk

