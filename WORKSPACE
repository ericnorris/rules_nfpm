workspace(name = "com_github_ericnorris_rules_nfpm")

load("//nfpm:repositories.bzl", "rules_nfpm_dependencies")

rules_nfpm_dependencies()

load("//nfpm:go_repositories.bzl", "rules_nfpm_go_dependencies")

# the nogo parameter is not needed by downstream dependencies of these rules
# gazelle:repository_macro nfpm/go_repositories.bzl%_rules_nfpm_go_repositories
rules_nfpm_go_dependencies(nogo = "@//:rules_nfpm_nogo")
