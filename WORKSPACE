workspace(name = "com_github_ericnorris_rules_nfpm")

load("//nfpm:repositories.bzl", "rules_nfpm_dependencies")

rules_nfpm_dependencies()

load("//nfpm:go_repositories.bzl", "rules_nfpm_go_dependencies")

# gazelle:repository_macro nfpm/go_repositories.bzl%_rules_nfpm_go_repositories
rules_nfpm_go_dependencies()
