workspace(name = "com_github_ericnorris_rules_nfpm")

load("//nfpm:repositories.bzl", "rules_nfpm_dependencies")

rules_nfpm_dependencies()

load("//nfpm:setup.bzl", "rules_nfpm_setup")

# the nogo parameter is not needed by users of rules_nfpm
rules_nfpm_setup(nogo = "@//:rules_nfpm_nogo")

load("//nfpm:go_repositories.bzl", "rules_nfpm_go_dependencies")

# gazelle:repository_macro nfpm/go_repositories.bzl%_rules_nfpm_go_repositories
rules_nfpm_go_dependencies()

#
# Dependencies not needed by users of rules_nfpm
#

load("//nfpm/internal:repositories.bzl", "rules_nfpm_internal_dependencies")

rules_nfpm_internal_dependencies()

load("//nfpm/internal:setup.bzl", "rules_nfpm_internal_setup")

rules_nfpm_internal_setup()
