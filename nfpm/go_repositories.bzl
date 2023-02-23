load("//nfpm/internal:maybe_go_repository.bzl", go_repository = "maybe_go_repository")

def rules_nfpm_go_dependencies():
    _rules_nfpm_go_repositories()

def _rules_nfpm_go_repositories():
    go_repository(
        name = "com_github_alcortesm_tgz",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/alcortesm/tgz",
        sum = "h1:uSoVVbwJiQipAclBbw+8quDsfcvFjOpI5iCf4p/cqCs=",
        version = "v0.0.0-20161220082320-9c5fe88206d7",
    )
    go_repository(
        name = "com_github_alecthomas_assert_v2",
        importpath = "github.com/alecthomas/assert/v2",
        sum = "h1:tbredtNcQnoSd3QBhQWI7QZ3XHOVkw1Moklp2ojoH/0=",
        version = "v2.1.0",
    )

    go_repository(
        name = "com_github_alecthomas_kong",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/alecthomas/kong",
        sum = "h1:azoTh0IOfwlAX3qN9sHWTxACE2oV8Bg2gAwBsMwDQY4=",
        version = "v0.7.1",
    )
    go_repository(
        name = "com_github_alecthomas_repr",
        importpath = "github.com/alecthomas/repr",
        sum = "h1:ENn2e1+J3k09gyj2shc0dHr/yjaWSHRlrJ4DPMevDqE=",
        version = "v0.1.0",
    )

    go_repository(
        name = "com_github_aleksi_pointer",
        importpath = "github.com/AlekSi/pointer",
        sum = "h1:glcy/gc4h8HnG2Z3ZECSzZ1IX1x2JxRVuDzaJwQE0+w=",
        version = "v1.2.0",
    )

    go_repository(
        name = "com_github_anmitsu_go_shlex",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/anmitsu/go-shlex",
        sum = "h1:kFOfPq6dUM1hTo4JG6LR5AXSUEsOjtdm0kw0FtQtMJA=",
        version = "v0.0.0-20161002113705-648efa622239",
    )

    go_repository(
        name = "com_github_armon_go_socks5",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/armon/go-socks5",
        sum = "h1:0CwZNZbxp69SHPdPJAN/hZIm0C4OItdklCFmMRWYpio=",
        version = "v0.0.0-20160902184237-e75332964ef5",
    )

    go_repository(
        name = "com_github_blakesmith_ar",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/blakesmith/ar",
        sum = "h1:m935MPodAbYS46DG4pJSv7WO+VECIWUQ7OJYSoTrMh4=",
        version = "v0.0.0-20190502131153-809d4375e1fb",
    )

    go_repository(
        name = "com_github_caarlos0_go_rpmutils",
        importpath = "github.com/caarlos0/go-rpmutils",
        sum = "h1:IRrDwVlWQr6kS1U8/EtyA1+EHcc4yl8pndcqXWrEamg=",
        version = "v0.2.1-0.20211112020245-2cd62ff89b11",
    )
    go_repository(
        name = "com_github_caarlos0_testfs",
        importpath = "github.com/caarlos0/testfs",
        sum = "h1:3PHvzHi5Lt+g332CiShwS8ogTgS3HjrmzZxCm6JCDr8=",
        version = "v0.4.4",
    )

    go_repository(
        name = "com_github_cavaliergopher_cpio",
        importpath = "github.com/cavaliergopher/cpio",
        sum = "h1:KQFSeKmZhv0cr+kawA3a0xTQCU4QxXF1vhU7P7av2KM=",
        version = "v1.0.1",
    )

    go_repository(
        name = "com_github_cpuguy83_go_md2man_v2",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/cpuguy83/go-md2man/v2",
        sum = "h1:p1EgwI/C7NhT0JmVkwCD2ZBK8j4aeHQX2pMHHBfMQ6w=",
        version = "v2.0.2",
    )
    go_repository(
        name = "com_github_creack_pty",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/creack/pty",
        sum = "h1:uDmaGzcdjhF4i/plgjmEsriH11Y0o7RKapEf/LDaM3w=",
        version = "v1.1.9",
    )

    go_repository(
        name = "com_github_datadog_zstd",
        importpath = "github.com/DataDog/zstd",
        sum = "h1:EndNeuB0l9syBZhut0wns3gV1hL8zX8LIu6ZiVHWLIQ=",
        version = "v1.4.5",
    )

    go_repository(
        name = "com_github_davecgh_go_spew",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/davecgh/go-spew",
        sum = "h1:vj9j/u1bqnvCEfJOwUhtlOARqs3+rkHYY13jYWTU97c=",
        version = "v1.1.1",
    )

    go_repository(
        name = "com_github_emirpasic_gods",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/emirpasic/gods",
        sum = "h1:QAUIPSaCu4G+POclxeqb3F+WPpdKqFGlw36+yOzGlrg=",
        version = "v1.12.0",
    )

    go_repository(
        name = "com_github_flynn_go_shlex",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/flynn/go-shlex",
        sum = "h1:BHsljHzVlRcyQhjrss6TZTdY2VfCqZPbv5k3iBFa2ZQ=",
        version = "v0.0.0-20150515145356-3f9db97f8568",
    )
    go_repository(
        name = "com_github_fsnotify_fsnotify",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/fsnotify/fsnotify",
        sum = "h1:n+5WquG0fcWoWp6xPWfHdbskMCQaFnG6PfBrh1Ky4HY=",
        version = "v1.6.0",
    )

    go_repository(
        name = "com_github_gliderlabs_ssh",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/gliderlabs/ssh",
        sum = "h1:6zsha5zo/TWhRhwqCD3+EarCAgZ2yN28ipRnGPnwkI0=",
        version = "v0.2.2",
    )

    go_repository(
        name = "com_github_go_git_gcfg",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-git/gcfg",
        sum = "h1:Q5ViNfGF8zFgyJWPqYwA7qGFoMTEiBmdlkcfRmpIMa4=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_go_git_go_billy_v5",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-git/go-billy/v5",
        sum = "h1:CPiOUAzKtMRvolEKw+bG1PLRpT7D3LIs3/3ey4Aiu34=",
        version = "v5.3.1",
    )
    go_repository(
        name = "com_github_go_git_go_git_fixtures_v4",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-git/go-git-fixtures/v4",
        sum = "h1:PbKy9zOy4aAKrJ5pibIRpVO2BXnK1Tlcg+caKI7Ox5M=",
        version = "v4.0.2-0.20200613231340-f56387b50c12",
    )
    go_repository(
        name = "com_github_go_git_go_git_v5",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-git/go-git/v5",
        sum = "h1:YPBLG/3UK1we1ohRkncLjaXWLW+HKp5QNM/jTli2JgI=",
        version = "v5.2.0",
    )

    go_repository(
        name = "com_github_gobwas_glob",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/gobwas/glob",
        sum = "h1:A4xDbljILXROh+kObIiy5kIaPYD8e96x1tgBhUI5J+Y=",
        version = "v0.2.3",
    )

    go_repository(
        name = "com_github_google_go_cmp",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/google/go-cmp",
        sum = "h1:O2Tfq5qg4qc4AmwVlvv0oLiVAGB7enBSJ2x2DqQFi38=",
        version = "v0.5.9",
    )

    go_repository(
        name = "com_github_google_uuid",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/google/uuid",
        sum = "h1:t6JiXgmwXMjEs8VusXIJk2BXHsn+wx8BZdTaoZ5fu7I=",
        version = "v1.3.0",
    )

    go_repository(
        name = "com_github_gopherjs_gopherjs",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/gopherjs/gopherjs",
        sum = "h1:EGx4pi6eqNxGaHF6qqu48+N2wcFQ5qg5FXgOdqsJ5d8=",
        version = "v0.0.0-20181017120253-0766667cb4d1",
    )

    go_repository(
        name = "com_github_goreleaser_chglog",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/goreleaser/chglog",
        sum = "h1:6IAduyHpR58u3OFBdTrg8I/qAaBAmYYZ4Wq1Fz30QUY=",
        version = "v0.4.1",
    )
    go_repository(
        name = "com_github_goreleaser_fileglob",
        importpath = "github.com/goreleaser/fileglob",
        sum = "h1:/X6J7U8lbDpQtBvGcwwPS6OpzkNVlVEsFUVRx9+k+7I=",
        version = "v1.3.0",
        
    )
    go_repository(
        name = "com_github_goreleaser_nfpm_v2",
        importpath = "github.com/goreleaser/nfpm/v2",
        sum = "h1:nL7sXwsMLsc+NWE4Eddev+ZZomRaucT0WSnWkLwuxBM=",
        version = "v2.26.0",
        patch_args = ["-p1"],
        patches = ["@com_github_fancom_rules_nfpm//nfpm:nfpm.patch"]
    )

    go_repository(
        name = "com_github_hashicorp_hcl",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/hcl",
        sum = "h1:0Anlzjpi4vEasTeNFn2mLJgTSwt0+6sfsiTG8qcWGx4=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hexops_gotextdiff",
        importpath = "github.com/hexops/gotextdiff",
        sum = "h1:gitA9+qJrrTCsiCl7+kh75nPqQt1cx4ZkudSTLoUqJM=",
        version = "v1.0.3",
    )

    go_repository(
        name = "com_github_huandu_xstrings",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/huandu/xstrings",
        sum = "h1:L18LIDzqlW6xN2rEkpdV8+oL/IXWJ1APd+vsdYy4Wdw=",
        version = "v1.3.2",
    )
    go_repository(
        name = "com_github_iancoleman_orderedmap",
        importpath = "github.com/iancoleman/orderedmap",
        sum = "h1:i462o439ZjprVSFSZLZxcsoAe592sZB1rci2Z8j4wdk=",
        version = "v0.0.0-20190318233801-ac98e3ecb4b0",
    )

    go_repository(
        name = "com_github_imdario_mergo",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/imdario/mergo",
        sum = "h1:lFzP57bqS/wsqKssCGmtLAb8A0wKjLGrve2q3PPVcBk=",
        version = "v0.3.13",
    )
    go_repository(
        name = "com_github_inconshreveable_mousetrap",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/inconshreveable/mousetrap",
        sum = "h1:U3uMjPSQEBMNp1lFxmllqCPM6P5u/Xq7Pgzkat/bFNc=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_invopop_jsonschema",
        importpath = "github.com/invopop/jsonschema",
        sum = "h1:2vgQcBz1n256N+FpX3Jq7Y17AjYt46Ig3zIWyy770So=",
        version = "v0.7.0",
    )

    go_repository(
        name = "com_github_jbenet_go_context",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/jbenet/go-context",
        sum = "h1:BQSFePA1RWJOlocH6Fxy8MmwDt+yVQYULKfN0RoTN8A=",
        version = "v0.0.0-20150711004518-d14ea06fba99",
    )
    go_repository(
        name = "com_github_jessevdk_go_flags",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/jessevdk/go-flags",
        sum = "h1:4IU2WS7AumrZ/40jfhf4QVDMsQwqA7VEHozFRrGARJA=",
        version = "v1.4.0",
    )

    go_repository(
        name = "com_github_jtolds_gls",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/jtolds/gls",
        sum = "h1:xdiiI2gbIgH/gLH7ADydsJ1uDOEzR8yvV7C0MuV77Wo=",
        version = "v4.20.0+incompatible",
    )

    go_repository(
        name = "com_github_kevinburke_ssh_config",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/kevinburke/ssh_config",
        sum = "h1:pH/t1WS9NzT8go394IqZeJTMHVm6Cr6ZJ6AQ+mdNo/o=",
        version = "v1.1.0",
    )

    go_repository(
        name = "com_github_klauspost_compress",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/klauspost/compress",
        sum = "h1:EF27CXIuDsYJ6mmvtBRlEuB2UVOqHG1tAXgZ7yIO+lw=",
        version = "v1.15.15",
    )
    go_repository(
        name = "com_github_klauspost_pgzip",
        importpath = "github.com/klauspost/pgzip",
        sum = "h1:qnWYvvKqedOF2ulHpMG72XQol4ILEJ8k2wwRl/Km8oE=",
        version = "v1.2.5",
    )

    go_repository(
        name = "com_github_kr_pretty",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/kr/pretty",
        sum = "h1:L/CwN0zerZDmRFUapSPitk6f+Q3+0za1rQkzVuMiMFI=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_kr_pty",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/kr/pty",
        sum = "h1:VkoXIwSboBpnk99O/KFauAEILuNHv5DVFKZMBN/gUgw=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_kr_text",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/kr/text",
        sum = "h1:5Nx0Ya0ZqY2ygV366QzturHI13Jq95ApcVaJBhpS+AY=",
        version = "v0.2.0",
    )

    go_repository(
        name = "com_github_magiconair_properties",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/magiconair/properties",
        sum = "h1:IeQXZAiQcpL9mgcAe1Nu6cX9LLw6ExEHKjN0VQdvPDY=",
        version = "v1.8.7",
    )

    go_repository(
        name = "com_github_masterminds_goutils",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/Masterminds/goutils",
        sum = "h1:5nUrii3FMTL5diU80unEVvNevw1nH4+ZV4DSLVJLSYI=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_masterminds_semver",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/Masterminds/semver",
        sum = "h1:H65muMkzWKEuNDnfl9d70GUjFniHKHRbFPGBuZ3QEww=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_masterminds_semver_v3",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/Masterminds/semver/v3",
        sum = "h1:3MEsd0SM6jqZojhjLWWeBY+Kcjy9i6MQAeY7YgDP83g=",
        version = "v3.2.0",
    )

    go_repository(
        name = "com_github_masterminds_sprig",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/Masterminds/sprig",
        sum = "h1:z4yfnGrZ7netVz+0EDJ0Wi+5VZCSYp4Z0m2dk6cEM60=",
        version = "v2.22.0+incompatible",
    )

    go_repository(
        name = "com_github_matryer_is",
        importpath = "github.com/matryer/is",
        sum = "h1:sosSmIWwkYITGrxZ25ULNDeKiMNzFSr4V/eqBQP0PeE=",
        version = "v1.4.0",
    )

    go_repository(
        name = "com_github_microsoft_go_winio",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/Microsoft/go-winio",
        sum = "h1:aPJp2QD7OOrhO5tQXqQoGSJc+DjDtWTGLOmNyAm6FgY=",
        version = "v0.5.1",
    )

    go_repository(
        name = "com_github_mitchellh_copystructure",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/mitchellh/copystructure",
        sum = "h1:vpKXTN4ewci03Vljg/q9QvCGUDttBOGBIa15WveJJGw=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_mitchellh_go_homedir",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/mitchellh/go-homedir",
        sum = "h1:lukF9ziXFxDFPkA1vsr5zpc1XuPDn/wFntq5mG+4E0Y=",
        version = "v1.1.0",
    )

    go_repository(
        name = "com_github_mitchellh_mapstructure",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/mitchellh/mapstructure",
        sum = "h1:jeMsZIYE/09sWLaz43PL7Gy6RuMjD2eJVyuac5Z2hdY=",
        version = "v1.5.0",
    )

    go_repository(
        name = "com_github_mitchellh_reflectwalk",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/mitchellh/reflectwalk",
        sum = "h1:G2LzWKi524PWgd3mLHV8Y5k7s6XUvT0Gef6zxSIeXaQ=",
        version = "v1.0.2",
    )

    go_repository(
        name = "com_github_muesli_mango",
        importpath = "github.com/muesli/mango",
        sum = "h1:DZQK45d2gGbql1arsYA4vfg4d7I9Hfx5rX/GCmzsAvI=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_muesli_mango_cobra",
        importpath = "github.com/muesli/mango-cobra",
        sum = "h1:DQvjzAM0PMZr85Iv9LIMaYISpTOliMEg+uMFtNbYvWg=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_muesli_mango_pflag",
        importpath = "github.com/muesli/mango-pflag",
        sum = "h1:UADqbYgpUyRoBja3g6LUL+3LErjpsOwaC9ywvBWe7Sg=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_muesli_roff",
        importpath = "github.com/muesli/roff",
        sum = "h1:YD0lalCotmYuF5HhZliKWlIx7IEhiXeSfq7hNjFqGF8=",
        version = "v0.1.0",
    )

    go_repository(
        name = "com_github_niemeyer_pretty",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/niemeyer/pretty",
        sum = "h1:fD57ERR4JtEqsWbfPhv4DMiApHyliiK5xCTNVSPiaAs=",
        version = "v0.0.0-20200227124842-a10e7caefd8e",
    )
    go_repository(
        name = "com_github_pelletier_go_toml_v2",
        importpath = "github.com/pelletier/go-toml/v2",
        sum = "h1:nrzqCb7j9cDFj2coyLNLaZuJTLjWjlaz6nvTvIwycIU=",
        version = "v2.0.6",
    )

    go_repository(
        name = "com_github_pkg_errors",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/pkg/errors",
        sum = "h1:FEBLx1zS214owpjy7qsBeixbURkuhQAwrK5UwLGTwt4=",
        version = "v0.9.1",
    )

    go_repository(
        name = "com_github_pmezard_go_difflib",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/pmezard/go-difflib",
        sum = "h1:4DBwDE0NGyQoBHbLQYPwSUPoCMWR5BEzIk/f1lZbAQM=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_protonmail_go_crypto",
        importpath = "github.com/ProtonMail/go-crypto",
        sum = "h1:bNpaLLv2Y4kslsdkdCwAYu8Bak1aGVtxwi8Z/wy4Yuo=",
        version = "v0.0.0-20210512092938-c05353c2d58c",
    )
    go_repository(
        name = "com_github_protonmail_go_mime",
        importpath = "github.com/ProtonMail/go-mime",
        sum = "h1:W6RrgN/sTxg1msqzFFb+G80MFmpjMw61IU+slm+wln4=",
        version = "v0.0.0-20190923161245-9b5a4261663a",
    )
    go_repository(
        name = "com_github_protonmail_gopenpgp_v2",
        importpath = "github.com/ProtonMail/gopenpgp/v2",
        sum = "h1:u2m7xt+CZWj88qK1UUNBoXeJCFJwJCZ/Ff4ymGoxEXs=",
        version = "v2.2.2",
    )

    go_repository(
        name = "com_github_russross_blackfriday_v2",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/russross/blackfriday/v2",
        sum = "h1:JIOH55/0cWyOuilr9/qlrm0BSXldqnqwMsf35Ld67mk=",
        version = "v2.1.0",
    )

    go_repository(
        name = "com_github_sergi_go_diff",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/sergi/go-diff",
        sum = "h1:XU+rvMAioB0UC3q1MFrIQy4Vo5/4VsRDQQXHsEya6xQ=",
        version = "v1.2.0",
    )

    go_repository(
        name = "com_github_sirupsen_logrus",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/sirupsen/logrus",
        sum = "h1:ShrD1U9pZB12TX0cVy0DtePoCH97K8EtX+mg7ZARUtM=",
        version = "v1.7.0",
    )
    go_repository(
        name = "com_github_smartystreets_assertions",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/smartystreets/assertions",
        sum = "h1:42S6lae5dvLc7BrLu/0ugRtcFVjoJNMC/N3yZFZkDFs=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_smartystreets_goconvey",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/smartystreets/goconvey",
        sum = "h1:9RBaZCeXEQ3UselpuwUQHltGVXvdwm6cv1hgR6gDIPg=",
        version = "v1.7.2",
    )

    go_repository(
        name = "com_github_spf13_afero",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/spf13/afero",
        sum = "h1:41FoI0fD7OR7mGcKE/aOiLkGreyf8ifIOQmJANWogMk=",
        version = "v1.9.3",
    )
    go_repository(
        name = "com_github_spf13_cast",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/spf13/cast",
        sum = "h1:rj3WzYc11XZaIZMPKmwP96zkFEnnAmV8s6XbB2aY32w=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_spf13_cobra",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/spf13/cobra",
        sum = "h1:o94oiPyS4KD1mPy2fmcYYHHfCxLqYjJOhGsCHFZtEzA=",
        version = "v1.6.1",
    )
    go_repository(
        name = "com_github_spf13_jwalterweatherman",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/spf13/jwalterweatherman",
        sum = "h1:ue6voC5bR5F8YxI5S67j9i582FU4Qvo2bmqnqMYADFk=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_spf13_pflag",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/spf13/pflag",
        sum = "h1:iy+VFUOCP1a+8yFto/drg2CJ5u0yRoB7fZw3DKv/JXA=",
        version = "v1.0.5",
    )
    go_repository(
        name = "com_github_spf13_viper",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/spf13/viper",
        sum = "h1:js3yy885G8xwJa6iOISGFwd+qlUo5AvyXb7CiihdtiU=",
        version = "v1.15.0",
    )

    go_repository(
        name = "com_github_stretchr_objx",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/stretchr/objx",
        sum = "h1:4G4v2dO3VZwixGIRoQ5Lfboy6nUhCyYzaqnIAPPhYs4=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_stretchr_testify",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/stretchr/testify",
        sum = "h1:w7B6lhMri9wdJUVmEZPGGhZzrYTPvgJArz7wNPgYKsk=",
        version = "v1.8.1",
    )
    go_repository(
        name = "com_github_subosito_gotenv",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/subosito/gotenv",
        sum = "h1:X1TuBLAMDFbaTAChgCBLu3DU3UPyELpnF2jjJ2cz/S8=",
        version = "v1.4.2",
    )

    go_repository(
        name = "com_github_ulikunitz_xz",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/ulikunitz/xz",
        sum = "h1:kpFauv27b6ynzBNT/Xy+1k+fK4WswhN/6PN5WhFAGw8=",
        version = "v0.5.11",
    )

    go_repository(
        name = "com_github_xanzy_ssh_agent",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/xanzy/ssh-agent",
        sum = "h1:AmzO1SSWxw73zxFZPRwaMN1MohDw8UyHnmuxyceTEGo=",
        version = "v0.3.1",
    )
    go_repository(
        name = "com_github_xi2_xz",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/xi2/xz",
        sum = "h1:nIPpBwaJSVYIxUFsDv3M8ofmx9yWTog9BfvIu0q41lo=",
        version = "v0.0.0-20171230120015-48954b6210f8",
    )

    go_repository(
        name = "com_gitlab_digitalxero_go_conventional_commit",
        importpath = "gitlab.com/digitalxero/go-conventional-commit",
        sum = "h1:8/dO6WWG+98PMhlZowt/YjuiKhqhGlOCwlIV8SqqGh8=",
        version = "v1.0.7",
    )

    go_repository(
        name = "in_gopkg_check_v1",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "gopkg.in/check.v1",
        sum = "h1:BLraFXnmrev5lT+xlilqcH8XK9/i0At2xKjWk4p6zsU=",
        version = "v1.0.0-20200227125254-8fa46927fb4f",
    )

    go_repository(
        name = "in_gopkg_ini_v1",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "gopkg.in/ini.v1",
        sum = "h1:Dgnx+6+nfE+IfzjUEISNeydPJh9AXNNsWbGP9KzCsOA=",
        version = "v1.67.0",
    )

    go_repository(
        name = "in_gopkg_warnings_v0",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "gopkg.in/warnings.v0",
        sum = "h1:wFXVbFY8DY5/xOe1ECiWdKCzZlxgshcYVNkBHstARME=",
        version = "v0.1.2",
    )
    go_repository(
        name = "in_gopkg_yaml_v2",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "gopkg.in/yaml.v2",
        sum = "h1:/eiJrUcujPVeJ3xlSWaiNi3uSVmDGBK1pDHUHAnao1I=",
        version = "v2.4.0",
    )

    go_repository(
        name = "in_gopkg_yaml_v3",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "gopkg.in/yaml.v3",
        sum = "h1:fxVm/GzAzEWqLHuvctI91KS9hhNmmWOoWu0XTYJS7CA=",
        version = "v3.0.1",
    )
    go_repository(
        name = "org_golang_x_crypto",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/crypto",
        sum = "h1:T8NU3HyQ8ClP4SEE+KbFlg6n0NhuTsN4MyznaarGsZM=",
        version = "v0.0.0-20220525230936-793ad666bf5e",
    )

    go_repository(
        name = "org_golang_x_net",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/net",
        sum = "h1:Q5QPcMlvfxFTAPV0+07Xz/MpK9NTXu2VDUuy0FeMfaU=",
        version = "v0.4.0",
    )

    go_repository(
        name = "org_golang_x_sys",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/sys",
        sum = "h1:w8ZOecv6NaNa/zC8944JTU3vz4u6Lagfk4RPQxv92NQ=",
        version = "v0.3.0",
    )

    go_repository(
        name = "org_golang_x_term",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/term",
        sum = "h1:qoo4akIqOcDME5bhc/NgxUdovd6BSS2uMsVjB56q1xI=",
        version = "v0.3.0",
    )
    go_repository(
        name = "org_golang_x_text",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/text",
        sum = "h1:OLmvp0KP+FVG99Ct/qFiL/Fhk4zp4QQnZ7b2U+5piUM=",
        version = "v0.5.0",
    )

    go_repository(
        name = "org_golang_x_tools",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/tools",
        sum = "h1:FDhOuMEY4JVRztM/gsbk+IKUQ8kj74bxZrgw87eMMVc=",
        version = "v0.0.0-20180917221912-90fa682c2a6e",
    )
