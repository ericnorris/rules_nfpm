load("//nfpm/internal:maybe_go_repository.bzl", go_repository = "maybe_go_repository")

def rules_nfpm_go_dependencies():
    _rules_nfpm_go_repositories()

def _rules_nfpm_go_repositories():
    go_repository(
        name = "org_golang_x_crypto",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/crypto",
        sum = "h1:XcWmESyNjXJMLahc3mqVQJcgSTDxFxhETVlfk9uGc38=",
        version = "v0.0.0-20220315160706-3147a52a75dd",
    )
    go_repository(
        name = "cc_mvdan_gofumpt",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "mvdan.cc/gofumpt",
        sum = "h1:5ZmJGYyuTlhdlIpRxSFhdJqkXQweXETFCEaLhRAX3e8=",
        version = "v0.0.0-20201129102820-5c11c50e9475",
    )
    go_repository(
        name = "cc_mvdan_interfacer",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "mvdan.cc/interfacer",
        sum = "h1:WX1yoOaKQfddO/mLzdV4wptyWgoH/6hwLs7QHTixo0I=",
        version = "v0.0.0-20180901003855-c20040233aed",
    )
    go_repository(
        name = "cc_mvdan_lint",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "mvdan.cc/lint",
        sum = "h1:DxJ5nJdkhDlLok9K6qO+5290kphDJbHOQO1DFFFTeBo=",
        version = "v0.0.0-20170908181259-adc824a0674b",
    )
    go_repository(
        name = "cc_mvdan_unparam",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "mvdan.cc/unparam",
        sum = "h1:kAREL6MPwpsk1/PQPFD3Eg7WAQR5mPTWZJaBiG5LDbY=",
        version = "v0.0.0-20200501210554-b37ab49443f7",
    )
    go_repository(
        name = "co_honnef_go_tools",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "honnef.co/go/tools",
        sum = "h1:W18jzjh8mfPez+AwGLxmOImucz/IFjpNlrKVnaj2YVc=",
        version = "v0.0.1-2020.1.6",
    )

    go_repository(
        name = "com_4d63_gochecknoglobals",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "4d63.com/gochecknoglobals",
        sum = "h1:wFEQiK85fRsEVF0CRrPAos5LoAryUsIX1kPW/WrIqFw=",
        version = "v0.0.0-20201008074935-acfc0b28355a",
    )
    go_repository(
        name = "com_github_acomagu_bufpipe",
        importpath = "github.com/acomagu/bufpipe",
        sum = "h1:fxAGrHZTgQ9w5QqVItgzwj235/uYZYgbXitB+dLupOk=",
        version = "v1.0.3",
    )

    go_repository(
        name = "com_github_alcortesm_tgz",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/alcortesm/tgz",
        sum = "h1:uSoVVbwJiQipAclBbw+8quDsfcvFjOpI5iCf4p/cqCs=",
        version = "v0.0.0-20161220082320-9c5fe88206d7",
    )
    go_repository(
        name = "com_github_alecthomas_jsonschema",
        importpath = "github.com/alecthomas/jsonschema",
        sum = "h1:sUHuJQ3zwLmUgKM1v51WLWRtoy9r+hc/m7DoNftpUdA=",
        version = "v0.0.0-20210920000243-787cd8204a0d",
    )

    go_repository(
        name = "com_github_alecthomas_kingpin",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/alecthomas/kingpin",
        sum = "h1:5svnBTFgJjZvGKyYBtMB0+m5wvrbUHiqye8wRJMlnYI=",
        version = "v2.2.6+incompatible",
    )
    go_repository(
        name = "com_github_alecthomas_kong",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/alecthomas/kong",
        sum = "h1:1kNhcFepkR+HmasQpbiKDLylIL8yh5B5y1zPp5bJimA=",
        version = "v0.6.1",
    )
    go_repository(
        name = "com_github_alecthomas_template",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/alecthomas/template",
        sum = "h1:JYp7IbQjafoB+tBA3gMyHYHrpOtNuDiK/uB5uXxq5wM=",
        version = "v0.0.0-20190718012654-fb15b899a751",
    )
    go_repository(
        name = "com_github_alecthomas_units",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/alecthomas/units",
        sum = "h1:UQZhZ2O0vMHr2cI+DC1Mbh0TJxzA3RcLoMsFw+aXw7E=",
        version = "v0.0.0-20190924025748-f65c72e2690d",
    )
    go_repository(
        name = "com_github_aleksi_pointer",
        importpath = "github.com/AlekSi/pointer",
        sum = "h1:glcy/gc4h8HnG2Z3ZECSzZ1IX1x2JxRVuDzaJwQE0+w=",
        version = "v1.2.0",
    )

    go_repository(
        name = "com_github_andybalholm_brotli",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/andybalholm/brotli",
        sum = "h1:7UCwP93aiSfvWpapti8g88vVVGp2qqtGyePsSuDafo4=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_anmitsu_go_shlex",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/anmitsu/go-shlex",
        sum = "h1:kFOfPq6dUM1hTo4JG6LR5AXSUEsOjtdm0kw0FtQtMJA=",
        version = "v0.0.0-20161002113705-648efa622239",
    )
    go_repository(
        name = "com_github_antihax_optional",
        importpath = "github.com/antihax/optional",
        sum = "h1:xK2lYat7ZLaVVcIuj82J8kIro4V6kDe0AUDFboUCwcg=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_armon_circbuf",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/armon/circbuf",
        sum = "h1:QEF07wC0T1rKkctt1RINW/+RMTVmiwxETico2l3gxJA=",
        version = "v0.0.0-20150827004946-bbbad097214e",
    )
    go_repository(
        name = "com_github_armon_go_metrics",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/armon/go-metrics",
        sum = "h1:FR+drcQStOe+32sYyJYyZ7FIdgoGGBnwLl+flodp8Uo=",
        version = "v0.3.10",
    )
    go_repository(
        name = "com_github_armon_go_radix",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/armon/go-radix",
        sum = "h1:F4z6KzEeeQIMeLFa97iZU6vupzoecKdU5TX24SNppXI=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_armon_go_socks5",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/armon/go-socks5",
        sum = "h1:0CwZNZbxp69SHPdPJAN/hZIm0C4OItdklCFmMRWYpio=",
        version = "v0.0.0-20160902184237-e75332964ef5",
    )
    go_repository(
        name = "com_github_ashanbrown_forbidigo",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/ashanbrown/forbidigo",
        sum = "h1:QdNXBduDUopc3GW+YVYZn8jzmIMklQiCfdN2N5+dQeE=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_ashanbrown_makezero",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/ashanbrown/makezero",
        sum = "h1:/U9tbJzDRof4fOR51vwzWdIBsIH6R2yU0KG1MBRM2Js=",
        version = "v0.0.0-20201205152432-7b7cdbb3025a",
    )
    go_repository(
        name = "com_github_beorn7_perks",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/beorn7/perks",
        sum = "h1:VlbKKnNfV8bJzeqoa4cOKqO6bYr3WgKZxO8Z16+hsOM=",
        version = "v1.0.1",
    )

    go_repository(
        name = "com_github_bgentry_speakeasy",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/bgentry/speakeasy",
        sum = "h1:ByYyxL9InA1OWqxJqqp2A5pYHUrCiAL6K3J+LKSsQkY=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_bketelsen_crypt",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/bketelsen/crypt",
        sum = "h1:+0HFd5KSZ/mm3JmhmrDukiId5iR6w4+BdFtfSy4yWIc=",
        version = "v0.0.3-0.20200106085610-5cbc8cc4026c",
    )
    go_repository(
        name = "com_github_blakesmith_ar",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/blakesmith/ar",
        sum = "h1:m935MPodAbYS46DG4pJSv7WO+VECIWUQ7OJYSoTrMh4=",
        version = "v0.0.0-20190502131153-809d4375e1fb",
    )
    go_repository(
        name = "com_github_bombsimon_wsl_v3",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/bombsimon/wsl/v3",
        sum = "h1:E5SRssoBgtVFPcYWUOFJEcgaySgdtTNYzsSKDOY7ss8=",
        version = "v3.1.0",
    )
    go_repository(
        name = "com_github_burntsushi_toml",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/BurntSushi/toml",
        sum = "h1:WXkYYl6Yr3qBf1K79EBnL4mak0OimBfB0XUf9Vl28OQ=",
        version = "v0.3.1",
    )

    go_repository(
        name = "com_github_burntsushi_xgb",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/BurntSushi/xgb",
        sum = "h1:1BDTz0u9nC3//pOCMdNH+CiXJVYJh5UQNCOBG7jbELc=",
        version = "v0.0.0-20160522181843-27f122750802",
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
        name = "com_github_cavaliercoder_go_cpio",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/cavaliercoder/go-cpio",
        sum = "h1:hHg27A0RSSp2Om9lubZpiMgVbvn39bsUmW9U5h0twqc=",
        version = "v0.0.0-20180626203310-925f9528c45e",
    )
    go_repository(
        name = "com_github_cavaliergopher_cpio",
        importpath = "github.com/cavaliergopher/cpio",
        sum = "h1:KQFSeKmZhv0cr+kawA3a0xTQCU4QxXF1vhU7P7av2KM=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_census_instrumentation_opencensus_proto",
        importpath = "github.com/census-instrumentation/opencensus-proto",
        sum = "h1:t/LhUZLVitR1Ow2YOnduCsavhwFUklBMoGVYUCqmCqk=",
        version = "v0.3.0",
    )

    go_repository(
        name = "com_github_cespare_xxhash",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/cespare/xxhash",
        sum = "h1:a6HrQnmkObjyL+Gs60czilIUGqrzKutQD6XZog3p+ko=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_cespare_xxhash_v2",
        importpath = "github.com/cespare/xxhash/v2",
        sum = "h1:YRXhKfTDauu4ajMg1TPgFO5jnlC2HCbmLXMcTG5cbYE=",
        version = "v2.1.2",
    )
    go_repository(
        name = "com_github_chzyer_logex",
        importpath = "github.com/chzyer/logex",
        sum = "h1:Swpa1K6QvQznwJRcfTfQJmTE72DqScAa40E+fbHEXEE=",
        version = "v1.1.10",
    )
    go_repository(
        name = "com_github_chzyer_readline",
        importpath = "github.com/chzyer/readline",
        sum = "h1:fY5BOSpyZCqRo5OhCuC+XN+r/bBCmeuuJtjz+bCNIf8=",
        version = "v0.0.0-20180603132655-2972be24d48e",
    )
    go_repository(
        name = "com_github_chzyer_test",
        importpath = "github.com/chzyer/test",
        sum = "h1:q763qf9huN11kDQavWsoZXJNW3xEE4JJyHa5Q25/sd8=",
        version = "v0.0.0-20180213035817-a1ea475d72b1",
    )
    go_repository(
        name = "com_github_circonus_labs_circonus_gometrics",
        importpath = "github.com/circonus-labs/circonus-gometrics",
        sum = "h1:C29Ae4G5GtYyYMm1aztcyj/J5ckgJm2zwdDajFbx1NY=",
        version = "v2.3.1+incompatible",
    )
    go_repository(
        name = "com_github_circonus_labs_circonusllhist",
        importpath = "github.com/circonus-labs/circonusllhist",
        sum = "h1:TJH+oke8D16535+jHExHj4nQvzlZrj7ug5D7I/orNUA=",
        version = "v0.1.3",
    )

    go_repository(
        name = "com_github_client9_misspell",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/client9/misspell",
        sum = "h1:ta993UF76GwbvJcIo3Y68y/M3WxlpEHPWIGDkJYwzJI=",
        version = "v0.3.4",
    )
    go_repository(
        name = "com_github_cncf_udpa_go",
        importpath = "github.com/cncf/udpa/go",
        sum = "h1:hzAQntlaYRkVSFEfj9OTWlVV1H155FMD8BTKktLv0QI=",
        version = "v0.0.0-20210930031921-04548b0d99d4",
    )
    go_repository(
        name = "com_github_cncf_xds_go",
        importpath = "github.com/cncf/xds/go",
        sum = "h1:KwaoQzs/WeUxxJqiJsZ4euOly1Az/IgZXXSxlD/UBNk=",
        version = "v0.0.0-20211130200136-a8f946100490",
    )

    go_repository(
        name = "com_github_coreos_bbolt",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/coreos/bbolt",
        sum = "h1:wZwiHHUieZCquLkDL0B8UhzreNWsPHooDAG3q34zk0s=",
        version = "v1.3.2",
    )
    go_repository(
        name = "com_github_coreos_etcd",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/coreos/etcd",
        sum = "h1:8F3hqu9fGYLBifCmRCJsicFqDx/D68Rt3q1JMazcgBQ=",
        version = "v3.3.13+incompatible",
    )

    go_repository(
        name = "com_github_coreos_go_semver",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/coreos/go-semver",
        sum = "h1:wkHLiw0WNATZnSG7epLsujiMCgPAc9xhjJ4tgnAxmfM=",
        version = "v0.3.0",
    )
    go_repository(
        name = "com_github_coreos_go_systemd",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/coreos/go-systemd",
        sum = "h1:Wf6HqHfScWJN9/ZjdUKyjop4mf3Qdd+1TvvltAvM3m8=",
        version = "v0.0.0-20190321100706-95778dfbb74e",
    )
    go_repository(
        name = "com_github_coreos_go_systemd_v22",
        importpath = "github.com/coreos/go-systemd/v22",
        sum = "h1:D9/bQk5vlXQFZ6Kwuu6zaiXJ9oTPe68++AzAJc1DzSI=",
        version = "v22.3.2",
    )

    go_repository(
        name = "com_github_coreos_pkg",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/coreos/pkg",
        sum = "h1:lBNOc5arjvs8E5mO2tbpBpLoyyu8B6e44T7hJy6potg=",
        version = "v0.0.0-20180928190104-399ea9e2e55f",
    )

    go_repository(
        name = "com_github_cpuguy83_go_md2man_v2",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/cpuguy83/go-md2man/v2",
        sum = "h1:r/myEWzV9lfsM1tFLgDyu0atFtJ1fXn261LKYj/3DxU=",
        version = "v2.0.1",
    )
    go_repository(
        name = "com_github_creack_pty",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/creack/pty",
        sum = "h1:uDmaGzcdjhF4i/plgjmEsriH11Y0o7RKapEf/LDaM3w=",
        version = "v1.1.9",
    )

    go_repository(
        name = "com_github_daixiang0_gci",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/daixiang0/gci",
        sum = "h1:bosLNficubzJZICsVzxuyNc6oAbdz0zcqLG2G/RxtY4=",
        version = "v0.2.7",
    )
    go_repository(
        name = "com_github_datadog_datadog_go",
        importpath = "github.com/DataDog/datadog-go",
        sum = "h1:qSG2N4FghB1He/r2mFrWKCaL7dXCilEuNEeAn20fdD4=",
        version = "v3.2.0+incompatible",
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
        name = "com_github_denis_tingajkin_go_header",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/denis-tingajkin/go-header",
        sum = "h1:jEeSF4sdv8/3cT/WY8AgDHUoItNSoEZ7qg9dX7pc218=",
        version = "v0.4.2",
    )
    go_repository(
        name = "com_github_dgrijalva_jwt_go",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/dgrijalva/jwt-go",
        sum = "h1:7qlOGliEKZXTDg6OTjfoBKDXWrumCAMpl/TFQ4/5kLM=",
        version = "v3.2.0+incompatible",
    )
    go_repository(
        name = "com_github_dgryski_go_sip13",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/dgryski/go-sip13",
        sum = "h1:RMLoZVzv4GliuWafOuPuQDKSm1SJph7uCRnnS61JAn4=",
        version = "v0.0.0-20181026042036-e10d5fee7954",
    )
    go_repository(
        name = "com_github_djarvur_go_err113",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/Djarvur/go-err113",
        sum = "h1:uCRZZOdMQ0TZPHYTdYpoC0bLYJKPEHPUJ8MeAa51lNU=",
        version = "v0.1.0",
    )

    go_repository(
        name = "com_github_emirpasic_gods",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/emirpasic/gods",
        sum = "h1:QAUIPSaCu4G+POclxeqb3F+WPpdKqFGlw36+yOzGlrg=",
        version = "v1.12.0",
    )
    go_repository(
        name = "com_github_envoyproxy_go_control_plane",
        importpath = "github.com/envoyproxy/go-control-plane",
        sum = "h1:cgDRLG7bs59Zd+apAWuzLQL95obVYAymNJek76W3mgw=",
        version = "v0.10.1",
    )
    go_repository(
        name = "com_github_envoyproxy_protoc_gen_validate",
        importpath = "github.com/envoyproxy/protoc-gen-validate",
        sum = "h1:JiO+kJTpmYGjEodY7O1Zk8oZcNz1+f30UtwtXoFUPzE=",
        version = "v0.6.2",
    )

    go_repository(
        name = "com_github_fatih_color",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/fatih/color",
        sum = "h1:8LOYc1KYPPmyKMuN8QV2DNRWNbLo6LZ0iLs8+mlH53w=",
        version = "v1.13.0",
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
        sum = "h1:mZcQUHVQUQWoPXXtuf9yuEXKudkV2sx1E06UadKWpgI=",
        version = "v1.5.1",
    )
    go_repository(
        name = "com_github_ghodss_yaml",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/ghodss/yaml",
        sum = "h1:wQHKEahhL6wmXdzwWG11gIVCkOv05bNOh+Rxn0yngAk=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_gliderlabs_ssh",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/gliderlabs/ssh",
        sum = "h1:6zsha5zo/TWhRhwqCD3+EarCAgZ2yN28ipRnGPnwkI0=",
        version = "v0.2.2",
    )
    go_repository(
        name = "com_github_go_critic_go_critic",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-critic/go-critic",
        sum = "h1:3RJdgf6u4NZUumoP8nzbqiiNT8e1tC2Oc7jlgqre/IA=",
        version = "v0.5.2",
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
        sum = "h1:n9gGL1Ct/yIw+nfsfr8s4+sbhT+Ncu2SubfXjIWgci8=",
        version = "v4.2.1",
    )
    go_repository(
        name = "com_github_go_git_go_git_v5",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-git/go-git/v5",
        sum = "h1:BXyZu9t0VkbiHtqrsvdq39UDhGJTl1h55VW6CSC4aY4=",
        version = "v5.4.2",
    )
    go_repository(
        name = "com_github_go_gl_glfw",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-gl/glfw",
        sum = "h1:QbL/5oDUmRBzO9/Z7Seo6zf912W/a6Sr4Eu0G/3Jho0=",
        version = "v0.0.0-20190409004039-e6da0acd62b1",
    )
    go_repository(
        name = "com_github_go_gl_glfw_v3_3_glfw",
        importpath = "github.com/go-gl/glfw/v3.3/glfw",
        sum = "h1:WtGNWLvXpe6ZudgnXrq0barxBImvnnJoMEhXAzcbM0I=",
        version = "v0.0.0-20200222043503-6f7a984d4dc4",
    )

    go_repository(
        name = "com_github_go_kit_kit",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-kit/kit",
        sum = "h1:wDJmvq38kDhkVxi50ni9ykkdUr1PKgqKOoi01fa0Mdk=",
        version = "v0.9.0",
    )

    go_repository(
        name = "com_github_go_logfmt_logfmt",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-logfmt/logfmt",
        sum = "h1:MP4Eh7ZCb31lleYCFuwm0oe4/YGak+5l1vA2NOE80nA=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_go_ole_go_ole",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-ole/go-ole",
        sum = "h1:2lOsA72HgjxAuMlKpFiCbHTvu44PIVkZ5hqm3RSdI/E=",
        version = "v1.2.1",
    )
    go_repository(
        name = "com_github_go_sql_driver_mysql",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-sql-driver/mysql",
        sum = "h1:7LxgVwFb2hIQtMm87NdgAVfXjnt4OePseqT1tKx+opk=",
        version = "v1.4.0",
    )
    go_repository(
        name = "com_github_go_stack_stack",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-stack/stack",
        sum = "h1:5SgMzNM5HxrEjV0ww2lTmX6E2Izsfxas4+YHWRs3Lsk=",
        version = "v1.8.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_astcast",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-toolsmith/astcast",
        sum = "h1:JojxlmI6STnFVG9yOImLeGREv8W2ocNUM+iOhR6jE7g=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_astcopy",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-toolsmith/astcopy",
        sum = "h1:OMgl1b1MEpjFQ1m5ztEO06rz5CUd3oBv9RF7+DyvdG8=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_astequal",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-toolsmith/astequal",
        sum = "h1:4zxD8j3JRFNyLN46lodQuqz3xdKSrur7U/sr0SDS/gQ=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_astfmt",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-toolsmith/astfmt",
        sum = "h1:A0vDDXt+vsvLEdbMFJAUBI/uTbRw1ffOPnxsILnFL6k=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_astinfo",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-toolsmith/astinfo",
        sum = "h1:wP6mXeB2V/d1P1K7bZ5vDUO3YqEzcvOREOxZPEu3gVI=",
        version = "v0.0.0-20180906194353-9809ff7efb21",
    )
    go_repository(
        name = "com_github_go_toolsmith_astp",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-toolsmith/astp",
        sum = "h1:alXE75TXgcmupDsMK1fRAy0YUzLzqPVvBKoyWV+KPXg=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_pkgload",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-toolsmith/pkgload",
        sum = "h1:4DFWWMXVfbcN5So1sBNW9+yeiMqLFGl1wFLTL5R0Tgg=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_strparse",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-toolsmith/strparse",
        sum = "h1:Vcw78DnpCAKlM20kSbAyO4mPfJn/lyYA4BJUDxe2Jb4=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_typep",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-toolsmith/typep",
        sum = "h1:8xdsa1+FSIH/RhEkgnD1j2CJOy5mNllW1Q9tRiYwvlk=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_go_xmlfmt_xmlfmt",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/go-xmlfmt/xmlfmt",
        sum = "h1:khEcpUM4yFcxg4/FHQWkvVRmgijNXRfzkIDHh23ggEo=",
        version = "v0.0.0-20191208150333-d5b6f63a941b",
    )
    go_repository(
        name = "com_github_gobwas_glob",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/gobwas/glob",
        sum = "h1:A4xDbljILXROh+kObIiy5kIaPYD8e96x1tgBhUI5J+Y=",
        version = "v0.2.3",
    )
    go_repository(
        name = "com_github_godbus_dbus_v5",
        importpath = "github.com/godbus/dbus/v5",
        sum = "h1:9349emZab16e7zQvpmsbtjc18ykshndd8y2PG3sgJbA=",
        version = "v5.0.4",
    )

    go_repository(
        name = "com_github_gofrs_flock",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/gofrs/flock",
        sum = "h1:MSdYClljsF3PbENUUEx85nkWfJSGfzYI9yEBZOJz6CY=",
        version = "v0.8.0",
    )
    go_repository(
        name = "com_github_gogo_protobuf",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/gogo/protobuf",
        sum = "h1:Ov1cvc58UF3b5XjBnZv7+opcTcQFZebYjWzi34vdm4Q=",
        version = "v1.3.2",
    )
    go_repository(
        name = "com_github_golang_glog",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/golang/glog",
        sum = "h1:VKtxabqXZkF25pY9ekfRL6a582T4P37/31XEstQ5p58=",
        version = "v0.0.0-20160126235308-23def4e6c14b",
    )
    go_repository(
        name = "com_github_golang_groupcache",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/golang/groupcache",
        sum = "h1:oI5xCqsCo564l8iNU+DwB5epxmsaqB+rhGL0m5jtYqE=",
        version = "v0.0.0-20210331224755-41bb18bfe9da",
    )
    go_repository(
        name = "com_github_golang_mock",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/golang/mock",
        sum = "h1:ErTB+efbowRARo13NNdxyJji2egdxLGQhRaY+DUumQc=",
        version = "v1.6.0",
    )
    go_repository(
        name = "com_github_golang_protobuf",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/golang/protobuf",
        sum = "h1:ROPKBNFfQgOUMifHyP+KYbvpjbdoFNs+aK7DXlji0Tw=",
        version = "v1.5.2",
    )
    go_repository(
        name = "com_github_golang_snappy",
        importpath = "github.com/golang/snappy",
        sum = "h1:fHPg5GQYlCeLIPB9BZqMVR5nR9A+IM5zcgeTdjMYmLA=",
        version = "v0.0.3",
    )

    go_repository(
        name = "com_github_golangci_check",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/golangci/check",
        sum = "h1:23T5iq8rbUYlhpt5DB4XJkc6BU31uODLD1o1gKvZmD0=",
        version = "v0.0.0-20180506172741-cfe4005ccda2",
    )
    go_repository(
        name = "com_github_golangci_dupl",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/golangci/dupl",
        sum = "h1:w8hkcTqaFpzKqonE9uMCefW1WDie15eSP/4MssdenaM=",
        version = "v0.0.0-20180902072040-3e9179ac440a",
    )
    go_repository(
        name = "com_github_golangci_errcheck",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/golangci/errcheck",
        sum = "h1:YYWNAGTKWhKpcLLt7aSj/odlKrSrelQwlovBpDuf19w=",
        version = "v0.0.0-20181223084120-ef45e06d44b6",
    )
    go_repository(
        name = "com_github_golangci_go_misc",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/golangci/go-misc",
        sum = "h1:9kfjN3AdxcbsZBf8NjltjWihK2QfBBBZuv91cMFfDHw=",
        version = "v0.0.0-20180628070357-927a3d87b613",
    )

    go_repository(
        name = "com_github_golangci_gocyclo",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/golangci/gocyclo",
        sum = "h1:pXTK/gkVNs7Zyy7WKgLXmpQ5bHTrq5GDsp8R9Qs67g0=",
        version = "v0.0.0-20180528144436-0a533e8fa43d",
    )
    go_repository(
        name = "com_github_golangci_gofmt",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/golangci/gofmt",
        sum = "h1:iR3fYXUjHCR97qWS8ch1y9zPNsgXThGwjKPrYfqMPks=",
        version = "v0.0.0-20190930125516-244bba706f1a",
    )
    go_repository(
        name = "com_github_golangci_golangci_lint",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/golangci/golangci-lint",
        sum = "h1:xf1yVlLBNeCIoOHWXhwqnUeaqzONllRSgiLSahNt0Mw=",
        version = "v1.34.1",
    )
    go_repository(
        name = "com_github_golangci_ineffassign",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/golangci/ineffassign",
        sum = "h1:gLLhTLMk2/SutryVJ6D4VZCU3CUqr8YloG7FPIBWFpI=",
        version = "v0.0.0-20190609212857-42439a7714cc",
    )
    go_repository(
        name = "com_github_golangci_lint_1",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/golangci/lint-1",
        sum = "h1:MfyDlzVjl1hoaPzPD4Gpb/QgoRfSBR0jdhwGyAWwMSA=",
        version = "v0.0.0-20191013205115-297bf364a8e0",
    )
    go_repository(
        name = "com_github_golangci_maligned",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/golangci/maligned",
        sum = "h1:kNY3/svz5T29MYHubXix4aDDuE3RWHkPvopM/EDv/MA=",
        version = "v0.0.0-20180506175553-b1d89398deca",
    )
    go_repository(
        name = "com_github_golangci_misspell",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/golangci/misspell",
        sum = "h1:pLzmVdl3VxTOncgzHcvLOKirdvcx/TydsClUQXTehjo=",
        version = "v0.3.5",
    )
    go_repository(
        name = "com_github_golangci_prealloc",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/golangci/prealloc",
        sum = "h1:leSNB7iYzLYSSx3J/s5sVf4Drkc68W2wm4Ixh/mr0us=",
        version = "v0.0.0-20180630174525-215b22d4de21",
    )
    go_repository(
        name = "com_github_golangci_revgrep",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/golangci/revgrep",
        sum = "h1:XQKc8IYQOeRwVs36tDrEmTgDgP88d5iEURwpmtiAlOM=",
        version = "v0.0.0-20180812185044-276a5c0a1039",
    )
    go_repository(
        name = "com_github_golangci_unconvert",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/golangci/unconvert",
        sum = "h1:zwtduBRr5SSWhqsYNgcuWO2kFlpdOZbP0+yRjmvPGys=",
        version = "v0.0.0-20180507085042-28b1c447d1f4",
    )
    go_repository(
        name = "com_github_google_btree",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/google/btree",
        sum = "h1:0udJVsspx3VBr5FwtLhQQtuAsVc79tTq0ocGIPAU6qo=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_google_go_cmp",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/google/go-cmp",
        sum = "h1:e6P7q2lk1O+qJJb4BtCQXlK8vWEO8V1ZeuEdJNOqZyg=",
        version = "v0.5.8",
    )
    go_repository(
        name = "com_github_google_gofuzz",
        importpath = "github.com/google/gofuzz",
        sum = "h1:A8PeW59pxE9IoFRqBp37U+mSNaQoZ46F1f0f863XSXw=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_google_martian",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/google/martian",
        sum = "h1:/CP5g8u/VJHijgedC/Legn3BAbAaWPgecwXBIDzw5no=",
        version = "v2.1.0+incompatible",
    )
    go_repository(
        name = "com_github_google_martian_v3",
        importpath = "github.com/google/martian/v3",
        sum = "h1:d8MncMlErDFTwQGBK1xhv026j9kqhvw1Qv9IbWT1VLQ=",
        version = "v3.2.1",
    )

    go_repository(
        name = "com_github_google_pprof",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/google/pprof",
        sum = "h1:K6RDEckDVWvDI9JAJYCmNdQXq6neHJOYx3V6jnqNEec=",
        version = "v0.0.0-20210720184732-4bb14d4b1be1",
    )
    go_repository(
        name = "com_github_google_renameio",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/google/renameio",
        sum = "h1:GOZbcHa3HfsPKPlmyPyN2KEohoMXOhdMbHrvbpl2QaA=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_google_rpmpack",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/google/rpmpack",
        sum = "h1:6Jn9JtfCn20uycra92LxTkq5yfBKNSFlRJPBk8/Cxhg=",
        version = "v0.0.0-20220314092521-38642b5e571e",
    )
    go_repository(
        name = "com_github_google_uuid",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/google/uuid",
        sum = "h1:t6JiXgmwXMjEs8VusXIJk2BXHsn+wx8BZdTaoZ5fu7I=",
        version = "v1.3.0",
    )

    go_repository(
        name = "com_github_googleapis_gax_go_v2",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/googleapis/gax-go/v2",
        sum = "h1:dp3bWCh+PPO1zjRRiCSczJav13sBvG4UhNyVTa1KqdU=",
        version = "v2.1.1",
    )
    go_repository(
        name = "com_github_googleapis_google_cloud_go_testing",
        importpath = "github.com/googleapis/google-cloud-go-testing",
        sum = "h1:tlyzajkF3030q6M8SvmJSemC9DTHL/xaMa18b65+JM4=",
        version = "v0.0.0-20200911160855-bcd43fbb19e8",
    )

    go_repository(
        name = "com_github_gookit_color",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/gookit/color",
        sum = "h1:PPD/C7sf8u2L8XQPdPgsWRoAiLQGZEZOzU3cf5IYYUk=",
        version = "v1.3.1",
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
        sum = "h1:thKIYjrg5YrsuH1BzDZHQlvFwZxFNZC8YpK+sGJQPMk=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_goreleaser_fileglob",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/goreleaser/fileglob",
        sum = "h1:/X6J7U8lbDpQtBvGcwwPS6OpzkNVlVEsFUVRx9+k+7I=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_goreleaser_nfpm_v2",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/goreleaser/nfpm/v2",
        sum = "h1:fWmcyV61xA8mS4KnAwuxC5N834INkEsUDNJEDBUHCkc=",
        version = "v2.15.1-0.20220318122550-7954c937d661",
    )
    go_repository(
        name = "com_github_gorilla_websocket",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/gorilla/websocket",
        sum = "h1:+/TMaTYc4QFitKJxsQ7Yye35DkWvkdLcvGKqM+x0Ufc=",
        version = "v1.4.2",
    )
    go_repository(
        name = "com_github_gostaticanalysis_analysisutil",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/gostaticanalysis/analysisutil",
        sum = "h1:/1JkoHe4DVxur+0wPvi26FoQfe1E3ZGqIXS3aaSLiaw=",
        version = "v0.6.1",
    )

    go_repository(
        name = "com_github_gostaticanalysis_comment",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/gostaticanalysis/comment",
        sum = "h1:xHopR5L2lRz6OsjH4R2HG5wRhW9ySl3FsHIvi5pcXwc=",
        version = "v1.4.1",
    )
    go_repository(
        name = "com_github_grpc_ecosystem_go_grpc_middleware",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/grpc-ecosystem/go-grpc-middleware",
        sum = "h1:Iju5GlWwrvL6UBg4zJJt3btmonfrMlCDdsejg4CZE7c=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_grpc_ecosystem_go_grpc_prometheus",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/grpc-ecosystem/go-grpc-prometheus",
        sum = "h1:Ovs26xHkKqVztRpIrF/92BcuyuQ/YW4NSIpoGtfXNho=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_grpc_ecosystem_grpc_gateway",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/grpc-ecosystem/grpc-gateway",
        sum = "h1:gmcG1KaJ57LophUzW0Hy8NmPhnMZb4M0+kPpLofRdBo=",
        version = "v1.16.0",
    )

    go_repository(
        name = "com_github_hashicorp_consul_api",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/consul/api",
        sum = "h1:k3y1FYv6nuKyNTqj6w9gXOx5r5CfLj/k/euUeBXj1OY=",
        version = "v1.12.0",
    )
    go_repository(
        name = "com_github_hashicorp_consul_sdk",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/consul/sdk",
        sum = "h1:OJtKBtEjboEZvG6AOUdh4Z1Zbyu0WcxQ0qatRrZHTVU=",
        version = "v0.8.0",
    )
    go_repository(
        name = "com_github_hashicorp_errwrap",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/errwrap",
        sum = "h1:hLrqtEDnRye3+sgx6z4qVLNuviH3MR5aQ0ykNJa/UYA=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_cleanhttp",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/go-cleanhttp",
        sum = "h1:035FKYIWjmULyFRBKPs8TBQoi0x6d9G4xc9neXJWAZQ=",
        version = "v0.5.2",
    )
    go_repository(
        name = "com_github_hashicorp_go_hclog",
        importpath = "github.com/hashicorp/go-hclog",
        sum = "h1:bkKf0BeBXcSYa7f5Fyi9gMuQ8gNsxeiNpZjR6VxNZeo=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_hashicorp_go_immutable_radix",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/go-immutable-radix",
        sum = "h1:DKHmCUm2hRBK510BaiZlwvpD40f8bJFeZnpfm2KLowc=",
        version = "v1.3.1",
    )
    go_repository(
        name = "com_github_hashicorp_go_msgpack",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/go-msgpack",
        sum = "h1:zKjpN5BK/P5lMYrLmBHdBULWbJ0XpYR+7NGzqkZzoD4=",
        version = "v0.5.3",
    )
    go_repository(
        name = "com_github_hashicorp_go_multierror",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/go-multierror",
        sum = "h1:B9UzwGQJehnUY1yNrnwREHc3fGbC2xefo8g4TbElacI=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_net",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/go.net",
        sum = "h1:sNCoNyDEvN1xa+X0baata4RdcpKwcMS6DH+xwfqPgjw=",
        version = "v0.0.1",
    )
    go_repository(
        name = "com_github_hashicorp_go_retryablehttp",
        importpath = "github.com/hashicorp/go-retryablehttp",
        sum = "h1:QlWt0KvWT0lq8MFppF9tsJGF+ynG7ztc2KIPhzRGk7s=",
        version = "v0.5.3",
    )

    go_repository(
        name = "com_github_hashicorp_go_rootcerts",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/go-rootcerts",
        sum = "h1:jzhAVGtqPKbwpyCPELlgNWhE1znq+qwJtW5Oi2viEzc=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_hashicorp_go_sockaddr",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/go-sockaddr",
        sum = "h1:GeH6tui99pF4NJgfnhp+L6+FfobzVW3Ah46sLo0ICXs=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_syslog",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/go-syslog",
        sum = "h1:KaodqZuhUoZereWVIYmpUgZysurB1kBLX2j0MwMrUAE=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_uuid",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/go-uuid",
        sum = "h1:fv1ep09latC32wFoVwnqcnKJGnMSdBanPczbHAYm1BE=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_hashicorp_golang_lru",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/golang-lru",
        sum = "h1:YDjusn29QI/Das2iO9M0BHnIbxPeyuCHsjMW+lJfyTc=",
        version = "v0.5.4",
    )
    go_repository(
        name = "com_github_hashicorp_hcl",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/hcl",
        sum = "h1:0Anlzjpi4vEasTeNFn2mLJgTSwt0+6sfsiTG8qcWGx4=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_hashicorp_logutils",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/logutils",
        sum = "h1:dLEQVugN8vlakKOUE3ihGLTZJRB4j+M2cdTm/ORI65Y=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_mdns",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/mdns",
        sum = "h1:sY0CMhFmjIPDMlTB+HfymFHCaYLhgifZ0QhjaYKD/UQ=",
        version = "v1.0.4",
    )
    go_repository(
        name = "com_github_hashicorp_memberlist",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/memberlist",
        sum = "h1:8+567mCcFDnS5ADl7lrpxPMWiFCElyUEeW0gtj34fMA=",
        version = "v0.3.0",
    )
    go_repository(
        name = "com_github_hashicorp_serf",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hashicorp/serf",
        sum = "h1:uuEX1kLR6aoda1TBttmJQKDLZE1Ob7KN0NPdE7EtCDc=",
        version = "v0.9.6",
    )
    go_repository(
        name = "com_github_hpcloud_tail",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/hpcloud/tail",
        sum = "h1:nfCOvKYfkgYP8hkirhJocXT2+zOD8yUNjXaWfTlyFKI=",
        version = "v1.0.0",
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
        sum = "h1:sq1N/TFpYH++aViPcaKjys3bDClUEU7s5B+z6jq8pNA=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_iancoleman_strcase",
        importpath = "github.com/iancoleman/strcase",
        sum = "h1:05I4QRnGpI0m37iZQRuskXh+w77mr6Z41lwQzuHLwW0=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_ianlancetaylor_demangle",
        importpath = "github.com/ianlancetaylor/demangle",
        sum = "h1:mV02weKRL81bEnm8A0HT1/CAelMQDBuQIfLw8n+d6xI=",
        version = "v0.0.0-20200824232613-28f6c0f3b639",
    )

    go_repository(
        name = "com_github_imdario_mergo",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/imdario/mergo",
        sum = "h1:b6R2BslTbIEToALKP7LxUvijTsNI9TAe80pLWN2g/HU=",
        version = "v0.3.12",
    )
    go_repository(
        name = "com_github_inconshreveable_mousetrap",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/inconshreveable/mousetrap",
        sum = "h1:Z8tu5sraLXCXIcARxBp/8cbvlwVa7Z1NHg9XEKhtSvM=",
        version = "v1.0.0",
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
        sum = "h1:1jKYvbxEjfUl0fmqTCOfonvskHHXMjBySTLW4y9LFvc=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_jgautheron_goconst",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/jgautheron/goconst",
        sum = "h1:7nkB9fLPMwtn/R6qfPcHileL/x9ydlhw8XyDrLI1ZXg=",
        version = "v0.0.0-20201117150253-ccae5bf973f3",
    )
    go_repository(
        name = "com_github_jingyugao_rowserrcheck",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/jingyugao/rowserrcheck",
        sum = "h1:GmsqmapfzSJkm28dhRoHz2tLRbJmqhU86IPgBtN3mmk=",
        version = "v0.0.0-20191204022205-72ab7603b68a",
    )
    go_repository(
        name = "com_github_jirfag_go_printf_func_name",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/jirfag/go-printf-func-name",
        sum = "h1:KA9BjwUk7KlCh6S9EAGWBt1oExIUv9WyNCiRz5amv48=",
        version = "v0.0.0-20200119135958-7558a9eaa5af",
    )
    go_repository(
        name = "com_github_jmoiron_sqlx",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/jmoiron/sqlx",
        sum = "h1:lrdPtrORjGv1HbbEvKWDUAy97mPpFm4B8hp77tcCUJY=",
        version = "v1.2.1-0.20190826204134-d7d95172beb5",
    )
    go_repository(
        name = "com_github_jonboulle_clockwork",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/jonboulle/clockwork",
        sum = "h1:VKV+ZcuP6l3yW9doeqz6ziZGgcynBVQO+obU0+0hcPo=",
        version = "v0.1.0",
    )

    go_repository(
        name = "com_github_json_iterator_go",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/json-iterator/go",
        sum = "h1:PV8peI4a0ysnczrg+LtxykD8LfKY9ML6u2jnxaEnrnM=",
        version = "v1.1.12",
    )
    go_repository(
        name = "com_github_jstemmer_go_junit_report",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/jstemmer/go-junit-report",
        sum = "h1:6QPYqodiu3GuPL+7mfx+NwDdp2eTkp9IfEUpgAwUN0o=",
        version = "v0.9.1",
    )
    go_repository(
        name = "com_github_jtolds_gls",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/jtolds/gls",
        sum = "h1:xdiiI2gbIgH/gLH7ADydsJ1uDOEzR8yvV7C0MuV77Wo=",
        version = "v4.20.0+incompatible",
    )
    go_repository(
        name = "com_github_julienschmidt_httprouter",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/julienschmidt/httprouter",
        sum = "h1:TDTW5Yz1mjftljbcKqRcrYhd4XeOoI98t+9HbQbYf7g=",
        version = "v1.2.0",
    )

    go_repository(
        name = "com_github_kevinburke_ssh_config",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/kevinburke/ssh_config",
        sum = "h1:pH/t1WS9NzT8go394IqZeJTMHVm6Cr6ZJ6AQ+mdNo/o=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_kisielk_errcheck",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/kisielk/errcheck",
        sum = "h1:e8esj/e4R+SAOwFwN+n3zr0nYeCyeweozKfO23MvHzY=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_kisielk_gotool",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/kisielk/gotool",
        sum = "h1:AV2c/EiW3KqPNT9ZKl07ehoAGi4C5/01Cfbblndcapg=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_klauspost_compress",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/klauspost/compress",
        sum = "h1:P76CopJELS0TiO2mebmnzgWaajssP/EszplttgQxcgc=",
        version = "v1.13.6",
    )
    go_repository(
        name = "com_github_klauspost_pgzip",
        importpath = "github.com/klauspost/pgzip",
        sum = "h1:qnWYvvKqedOF2ulHpMG72XQol4ILEJ8k2wwRl/Km8oE=",
        version = "v1.2.5",
    )

    go_repository(
        name = "com_github_konsorten_go_windows_terminal_sequences",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/konsorten/go-windows-terminal-sequences",
        sum = "h1:CE8S1cTafDpPvMhIxNJKvHsGVBgn1xWYf1NbHQhywc8=",
        version = "v1.0.3",
    )

    go_repository(
        name = "com_github_kr_fs",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/kr/fs",
        sum = "h1:Jskdu9ieNAYnjxsi0LbQp1ulIKZV1LAFgK1tWhpZgl8=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_kr_logfmt",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/kr/logfmt",
        sum = "h1:T+h1c/A9Gawja4Y9mFVWj2vyii2bbUNDw3kt9VxK2EY=",
        version = "v0.0.0-20140226030751-b84e30acd515",
    )
    go_repository(
        name = "com_github_kr_pretty",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/kr/pretty",
        sum = "h1:Fmg33tUaq4/8ym9TJN1x7sLJnHVwhP33CNkpYV/7rwI=",
        version = "v0.2.1",
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
        name = "com_github_kulti_thelper",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/kulti/thelper",
        sum = "h1:ig1EW6yhDiRNN3dplbhdsW2gTvbxTz9i4q5Rr/tRfpk=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_kunwardeep_paralleltest",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/kunwardeep/paralleltest",
        sum = "h1:/jJRv0TiqPoEy/Y8dQxCFJhD56uS/pnvtatgTZBHokU=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_kyoh86_exportloopref",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/kyoh86/exportloopref",
        sum = "h1:5Ry/at+eFdkX9Vsdw3qU4YkvGtzuVfzT4X7S77LoN/M=",
        version = "v0.1.8",
    )
    go_repository(
        name = "com_github_lib_pq",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/lib/pq",
        sum = "h1:X5PMW56eZitiTeO7tKzZxFCSpbFZJtkMMooicw2us9A=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_logrusorgru_aurora",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/logrusorgru/aurora",
        sum = "h1:9MlwzLdW7QSDrhDjFlsEYmxpFyIoXmYRon3dt0io31k=",
        version = "v0.0.0-20181002194514-a7b3b318ed4e",
    )
    go_repository(
        name = "com_github_lyft_protoc_gen_star",
        importpath = "github.com/lyft/protoc-gen-star",
        sum = "h1:zSGLzsUew8RT+ZKPHc3jnf8XLaVyHzTcAFBzHtCNR20=",
        version = "v0.5.3",
    )

    go_repository(
        name = "com_github_magiconair_properties",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/magiconair/properties",
        sum = "h1:b6kJs+EmPFMYGkow9GiUyCyOvIwYetYJ3fSaWak/Gls=",
        version = "v1.8.5",
    )
    go_repository(
        name = "com_github_maratori_testpackage",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/maratori/testpackage",
        sum = "h1:QtJ5ZjqapShm0w5DosRjg0PRlSdAdlx+W6cCKoALdbQ=",
        version = "v1.0.1",
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
        sum = "h1:hLg3sBzpNErnxhQtUy/mmLR2I9foDujNK030IGemrRc=",
        version = "v3.1.1",
    )

    go_repository(
        name = "com_github_masterminds_sprig",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/Masterminds/sprig",
        sum = "h1:z4yfnGrZ7netVz+0EDJ0Wi+5VZCSYp4Z0m2dk6cEM60=",
        version = "v2.22.0+incompatible",
    )
    go_repository(
        name = "com_github_matoous_godox",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/matoous/godox",
        sum = "h1:2U5rOmpaB96l35w+NDjMtmmrp2e6a6AJKoc4B5+7UwA=",
        version = "v0.0.0-20200801072554-4fb83dc2941e",
    )
    go_repository(
        name = "com_github_matryer_is",
        importpath = "github.com/matryer/is",
        sum = "h1:sosSmIWwkYITGrxZ25ULNDeKiMNzFSr4V/eqBQP0PeE=",
        version = "v1.4.0",
    )

    go_repository(
        name = "com_github_mattn_go_colorable",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/mattn/go-colorable",
        sum = "h1:jF+Du6AlPIjs2BiUiQlKOX0rt3SujHxPnksPKZbaA40=",
        version = "v0.1.12",
    )
    go_repository(
        name = "com_github_mattn_go_isatty",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/mattn/go-isatty",
        sum = "h1:yVuAays6BHfxijgZPzw+3Zlu5yQgKGP2/hcQbHb7S9Y=",
        version = "v0.0.14",
    )
    go_repository(
        name = "com_github_mattn_go_sqlite3",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/mattn/go-sqlite3",
        sum = "h1:pDRiWfl+++eC2FEFRy6jXmQlvp4Yh3z1MJKg4UeYM/4=",
        version = "v1.9.0",
    )

    go_repository(
        name = "com_github_mattn_goveralls",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/mattn/goveralls",
        sum = "h1:7eJB6EqsPhRVxvwEXGnqdO2sJI0PTsrWoTMXEk9/OQc=",
        version = "v0.0.2",
    )
    go_repository(
        name = "com_github_matttproud_golang_protobuf_extensions",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/matttproud/golang_protobuf_extensions",
        sum = "h1:4hp9jkHxhMHkqkrB3Ix0jegS5sx/RkqARlsWZ6pIwiU=",
        version = "v1.0.1",
    )

    go_repository(
        name = "com_github_mbilski_exhaustivestruct",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/mbilski/exhaustivestruct",
        sum = "h1:4ykwscnAFeHJruT+EY3M3vdeP8uXMh0VV2E61iR7XD8=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_microsoft_go_winio",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/Microsoft/go-winio",
        sum = "h1:a9IhgEQBCUEk6QCdml9CiJGhAws+YwffDHEMp1VMrpA=",
        version = "v0.5.2",
    )
    go_repository(
        name = "com_github_miekg_dns",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/miekg/dns",
        sum = "h1:WMszZWJG0XmzbK9FEmzH2TVcqYzFesusSIB41b8KHxY=",
        version = "v1.1.41",
    )
    go_repository(
        name = "com_github_mitchellh_cli",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/mitchellh/cli",
        sum = "h1:tEElEatulEHDeedTxwckzyYMA5c86fbmNIUL1hBIiTg=",
        version = "v1.1.0",
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
        name = "com_github_mitchellh_go_ps",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/mitchellh/go-ps",
        sum = "h1:i6ampVEEF4wQFF+bkYfwYgY+F/uYJDktmvLPf7qIgjc=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_mitchellh_go_testing_interface",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/mitchellh/go-testing-interface",
        sum = "h1:fzU/JVNcaqHQEcVFAKeR41fkiLdIPrefOvVG1VZ96U0=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_mitchellh_gox",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/mitchellh/gox",
        sum = "h1:lfGJxY7ToLJQjHHwi0EX6uYBdK78egf954SQl13PQJc=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_mitchellh_iochan",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/mitchellh/iochan",
        sum = "h1:C+X3KsSTLFVBr/tK1eYN/vs4rJcvsiLU338UhYPJWeY=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_mitchellh_mapstructure",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/mitchellh/mapstructure",
        sum = "h1:OVowDSCllw/YjdLkam3/sm7wEtOy59d8ndGgCcyj8cs=",
        version = "v1.4.3",
    )

    go_repository(
        name = "com_github_mitchellh_reflectwalk",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/mitchellh/reflectwalk",
        sum = "h1:G2LzWKi524PWgd3mLHV8Y5k7s6XUvT0Gef6zxSIeXaQ=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_modern_go_concurrent",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/modern-go/concurrent",
        sum = "h1:TRLaZ9cD/w8PVh93nsPXa1VrQ6jlwL5oN8l14QlcNfg=",
        version = "v0.0.0-20180306012644-bacd9c7ef1dd",
    )
    go_repository(
        name = "com_github_modern_go_reflect2",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/modern-go/reflect2",
        sum = "h1:xBagoLtFs94CBntxluKeaWgTMpvLxC4ur3nMaC9Gz0M=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_moricho_tparallel",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/moricho/tparallel",
        sum = "h1:95FytivzT6rYzdJLdtfn6m1bfFJylOJK41+lgv/EHf4=",
        version = "v0.2.1",
    )
    go_repository(
        name = "com_github_mozilla_tls_observatory",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/mozilla/tls-observatory",
        sum = "h1:1xJ+Xi9lYWLaaP4yB67ah0+548CD3110mCPWhVVjFkI=",
        version = "v0.0.0-20200317151703-4fa42e1c2dee",
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
        sum = "h1:vqqj69r/RilG+nyubXS5v9lq9I4Xkh0rk9KViB0go+I=",
        version = "v1.0.1-0.20220310171203-3b9e83f70431",
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
        name = "com_github_mwitkow_go_conntrack",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/mwitkow/go-conntrack",
        sum = "h1:F9x/1yl3T2AeKLr2AMdilSD8+f9bvMnNN8VS5iDtovc=",
        version = "v0.0.0-20161129095857-cc309e4a2223",
    )
    go_repository(
        name = "com_github_nakabonne_nestif",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/nakabonne/nestif",
        sum = "h1:+yOViDGhg8ygGrmII72nV9B/zGxY188TYpfolntsaPw=",
        version = "v0.3.0",
    )
    go_repository(
        name = "com_github_nbutton23_zxcvbn_go",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/nbutton23/zxcvbn-go",
        sum = "h1:AREM5mwr4u1ORQBMvzfzBgpsctsbQikCVpvC+tX285E=",
        version = "v0.0.0-20180912185939-ae427f1e4c1d",
    )
    go_repository(
        name = "com_github_niemeyer_pretty",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/niemeyer/pretty",
        sum = "h1:fD57ERR4JtEqsWbfPhv4DMiApHyliiK5xCTNVSPiaAs=",
        version = "v0.0.0-20200227124842-a10e7caefd8e",
    )

    go_repository(
        name = "com_github_nishanths_exhaustive",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/nishanths/exhaustive",
        sum = "h1:kVlMw8h2LHPMGUVqUj6230oQjjTMFjwcZrnkhXzFfl8=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_nxadm_tail",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/nxadm/tail",
        sum = "h1:DQuhQpB1tVlglWS2hLQ5OV6B5r8aGxSrPc5Qo6uTN78=",
        version = "v1.4.4",
    )
    go_repository(
        name = "com_github_oklog_ulid",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/oklog/ulid",
        sum = "h1:EGfNDEx6MqHz8B3uNV6QAib1UR2Lm97sHi3ocA6ESJ4=",
        version = "v1.3.1",
    )
    go_repository(
        name = "com_github_oneofone_xxhash",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/OneOfOne/xxhash",
        sum = "h1:KMrpdQIwFcEqXDklaen+P1axHaj9BSKzvpUUfnHldSE=",
        version = "v1.2.2",
    )
    go_repository(
        name = "com_github_onsi_ginkgo",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/onsi/ginkgo",
        sum = "h1:jMU0WaQrP0a/YAEq8eJmJKjBoMs+pClEr1vDMlM/Do4=",
        version = "v1.14.1",
    )
    go_repository(
        name = "com_github_onsi_gomega",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/onsi/gomega",
        sum = "h1:aY/nuoWlKJud2J6U0E3NWsjlg+0GtwXxgEqthRdzlcs=",
        version = "v1.10.2",
    )
    go_repository(
        name = "com_github_op_go_logging",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/op/go-logging",
        sum = "h1:lDH9UUVJtmYCjyT0CI4q8xvlXPxeZ0gYCVvWbmPlp88=",
        version = "v0.0.0-20160315200505-970db520ece7",
    )
    go_repository(
        name = "com_github_openpeedeep_depguard",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/OpenPeeDeeP/depguard",
        sum = "h1:VlW4R6jmBIv3/u1JNlawEvJMM4J+dPORPaZasQee8Us=",
        version = "v1.0.1",
    )

    go_repository(
        name = "com_github_pascaldekloe_goe",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/pascaldekloe/goe",
        sum = "h1:cBOtyMzM9HTpWjXfbbunk26uA6nG3a8n06Wieeh0MwY=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_pborman_uuid",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/pborman/uuid",
        sum = "h1:J7Q5mO4ysT1dv8hyrUGHb9+ooztCXu1D8MY8DZYsu3g=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_pelletier_go_toml",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/pelletier/go-toml",
        sum = "h1:tjENF6MfZAg8e4ZmZTeWaWiT2vXtsoO6+iuOjFhECwM=",
        version = "v1.9.4",
    )
    go_repository(
        name = "com_github_phayes_checkstyle",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/phayes/checkstyle",
        sum = "h1:CdDQnGF8Nq9ocOS/xlSptM1N3BbrA6/kmaep5ggwaIA=",
        version = "v0.0.0-20170904204023-bfd46e6a821d",
    )
    go_repository(
        name = "com_github_pkg_errors",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/pkg/errors",
        sum = "h1:FEBLx1zS214owpjy7qsBeixbURkuhQAwrK5UwLGTwt4=",
        version = "v0.9.1",
    )

    go_repository(
        name = "com_github_pkg_sftp",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/pkg/sftp",
        sum = "h1:I2qBYMChEhIjOgazfJmV3/mZM256btk6wkCDRmW7JYs=",
        version = "v1.13.1",
    )
    go_repository(
        name = "com_github_pmezard_go_difflib",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/pmezard/go-difflib",
        sum = "h1:4DBwDE0NGyQoBHbLQYPwSUPoCMWR5BEzIk/f1lZbAQM=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_polyfloyd_go_errorlint",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/polyfloyd/go-errorlint",
        sum = "h1:xAw10KgJqG5NJDfmRqJ05Z0IFblKumjtMeyiOLxj3+4=",
        version = "v0.0.0-20201127212506-19bd8db6546f",
    )
    go_repository(
        name = "com_github_posener_complete",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/posener/complete",
        sum = "h1:NP0eAhjcjImqslEwo/1hq7gpajME0fTLTezBKDqfXqo=",
        version = "v1.2.3",
    )
    go_repository(
        name = "com_github_prometheus_client_golang",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/prometheus/client_golang",
        sum = "h1:YVIb/fVcOTMSqtqZWSKnHpSLBxu8DKgxq8z6RuBZwqI=",
        version = "v1.4.0",
    )
    go_repository(
        name = "com_github_prometheus_client_model",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/prometheus/client_model",
        sum = "h1:uq5h0d+GuxiXLJLNABMgp2qUWDPiLvgCzz2dUR+/W/M=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_prometheus_common",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/prometheus/common",
        sum = "h1:KOMtN28tlbam3/7ZKEYKHhKoJZYYj3gMH4uc62x7X7U=",
        version = "v0.9.1",
    )
    go_repository(
        name = "com_github_prometheus_procfs",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/prometheus/procfs",
        sum = "h1:+fpWZdT24pJBiqJdAwYBjPSk+5YmQzYNPYzQsdzLkt8=",
        version = "v0.0.8",
    )
    go_repository(
        name = "com_github_prometheus_tsdb",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/prometheus/tsdb",
        sum = "h1:YZcsG11NqnK4czYLrWd9mpEuAJIHVQLwdrleYfszMAA=",
        version = "v0.7.1",
    )
    go_repository(
        name = "com_github_protonmail_go_crypto",
        importpath = "github.com/ProtonMail/go-crypto",
        sum = "h1:J2FzIrXN82q5uyUraeJpLIm7U6PffRwje2ORho5yIik=",
        version = "v0.0.0-20220113124808-70ae35bab23f",
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
        name = "com_github_quasilyte_go_consistent",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/quasilyte/go-consistent",
        sum = "h1:JoUA0uz9U0FVFq5p4LjEq4C0VgQ0El320s3Ms0V4eww=",
        version = "v0.0.0-20190521200055-c6f3937de18c",
    )

    go_repository(
        name = "com_github_quasilyte_go_ruleguard",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/quasilyte/go-ruleguard",
        sum = "h1:56eRm0daAyny9UhJnmtJW/UyLZQusukBAB8oT8AHKHo=",
        version = "v0.2.1",
    )
    go_repository(
        name = "com_github_quasilyte_regex_syntax",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/quasilyte/regex/syntax",
        sum = "h1:+gtJ/Pwj2dgUGlZgTrNFqajGYKZQc7Piqus/S6DK9CE=",
        version = "v0.0.0-20200805063351-8f842688393c",
    )
    go_repository(
        name = "com_github_rogpeppe_fastuuid",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/rogpeppe/fastuuid",
        sum = "h1:Ppwyp6VYCF1nvBTXL3trRso7mXMlRrw9ooo375wvi2s=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_rogpeppe_go_internal",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/rogpeppe/go-internal",
        sum = "h1:aIihoIOHCiLZHxyoNQ+ABL4NKhFTgKLBdMLyEAh98m0=",
        version = "v1.6.2",
    )

    go_repository(
        name = "com_github_russross_blackfriday_v2",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/russross/blackfriday/v2",
        sum = "h1:JIOH55/0cWyOuilr9/qlrm0BSXldqnqwMsf35Ld67mk=",
        version = "v2.1.0",
    )
    go_repository(
        name = "com_github_ryancurrah_gomodguard",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/ryancurrah/gomodguard",
        sum = "h1:YWfhGOrXwLGiqcC/u5EqG6YeS8nh+1fw0HEc85CVZro=",
        version = "v1.2.0",
    )

    go_repository(
        name = "com_github_ryanrolds_sqlclosecheck",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/ryanrolds/sqlclosecheck",
        sum = "h1:AZx+Bixh8zdUBxUA1NxbxVAS78vTPq4rCb8OUZI9xFw=",
        version = "v0.3.0",
    )
    go_repository(
        name = "com_github_ryanuber_columnize",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/ryanuber/columnize",
        sum = "h1:UFr9zpz4xgTnIE5yIMtWAMngCdZ9p/+q6lTbgelo80M=",
        version = "v0.0.0-20160712163229-9b3edd62028f",
    )
    go_repository(
        name = "com_github_sagikazarmark_crypt",
        importpath = "github.com/sagikazarmark/crypt",
        sum = "h1:Rqcx6Sf/bWQUmmfGQhcFx3wQQEfb2UZWhAKvGRairm0=",
        version = "v0.4.0",
    )

    go_repository(
        name = "com_github_sassoftware_go_rpmutils",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/sassoftware/go-rpmutils",
        sum = "h1:+gCnWOZV8Z/8jehJ2CdqB47Z3S+SREmQcuXkRFLNsiI=",
        version = "v0.0.0-20190420191620-a8f1baeba37b",
    )

    go_repository(
        name = "com_github_sean_seed",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/sean-/seed",
        sum = "h1:nn5Wsu0esKSJiIVhscUtVbo7ada43DJhG55ua/hjS5I=",
        version = "v0.0.0-20170313163322-e2103e2c3529",
    )
    go_repository(
        name = "com_github_securego_gosec_v2",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/securego/gosec/v2",
        sum = "h1:kjfXLeKdk98gBe2+eYRFMpC4+mxmQQtbidpiiOQ69Qc=",
        version = "v2.5.0",
    )

    go_repository(
        name = "com_github_sergi_go_diff",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/sergi/go-diff",
        sum = "h1:XU+rvMAioB0UC3q1MFrIQy4Vo5/4VsRDQQXHsEya6xQ=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_shazow_go_diff",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/shazow/go-diff",
        sum = "h1:W65qqJCIOVP4jpqPQ0YvHYKwcMEMVWIzWC5iNQQfBTU=",
        version = "v0.0.0-20160112020656-b6b7b6733b8c",
    )
    go_repository(
        name = "com_github_shirou_gopsutil",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/shirou/gopsutil",
        sum = "h1:WokF3GuxBeL+n4Lk4Fa8v9mbdjlrl7bHuneF4N1bk2I=",
        version = "v0.0.0-20190901111213-e4ec7b275ada",
    )
    go_repository(
        name = "com_github_shirou_w32",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/shirou/w32",
        sum = "h1:udFKJ0aHUL60LboW/A+DfgoHVedieIzIXE8uylPue0U=",
        version = "v0.0.0-20160930032740-bb4de0191aa4",
    )
    go_repository(
        name = "com_github_shurcool_go",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/shurcooL/go",
        sum = "h1:MZM7FHLqUHYI0Y/mQAt3d2aYa0SiNms/hFqC9qJYolM=",
        version = "v0.0.0-20180423040247-9e1955d9fb6e",
    )
    go_repository(
        name = "com_github_shurcool_go_goon",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/shurcooL/go-goon",
        sum = "h1:llrF3Fs4018ePo4+G/HV/uQUqEI1HMDjCeOf2V6puPc=",
        version = "v0.0.0-20170922171312-37c2f522c041",
    )

    go_repository(
        name = "com_github_shurcool_sanitized_anchor_name",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/shurcooL/sanitized_anchor_name",
        sum = "h1:PdmoCO6wvbs+7yrJyMORt4/BmY5IYyJwS/kOiWx8mHo=",
        version = "v1.0.0",
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
        name = "com_github_soheilhy_cmux",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/soheilhy/cmux",
        sum = "h1:0HKaf1o97UwFjHH9o5XsHUOF+tqmdA7KEzXLpiyaw0E=",
        version = "v0.1.4",
    )

    go_repository(
        name = "com_github_sonatard_noctx",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/sonatard/noctx",
        sum = "h1:VC1Qhl6Oxx9vvWo3UDgrGXYCeKCe3Wbw7qAWL6FrmTY=",
        version = "v0.0.1",
    )
    go_repository(
        name = "com_github_sourcegraph_go_diff",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/sourcegraph/go-diff",
        sum = "h1:hmA1LzxW0n1c3Q4YbrFgg4P99GSnebYa3x8gr0HZqLQ=",
        version = "v0.6.1",
    )
    go_repository(
        name = "com_github_spaolacci_murmur3",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/spaolacci/murmur3",
        sum = "h1:qLC7fQah7D6K1B0ujays3HV9gkFtllcxhzImRR7ArPQ=",
        version = "v0.0.0-20180118202830-f09979ecbc72",
    )
    go_repository(
        name = "com_github_spf13_afero",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/spf13/afero",
        sum = "h1:5MmtuhAgYeU6qpa7w7bP0dv6MBYuup0vekhSpSkoq60=",
        version = "v1.8.0",
    )
    go_repository(
        name = "com_github_spf13_cast",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/spf13/cast",
        sum = "h1:s0hze+J0196ZfEMTs80N7UlFt0BDuQ7Q+JDnHiMWKdA=",
        version = "v1.4.1",
    )
    go_repository(
        name = "com_github_spf13_cobra",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/spf13/cobra",
        sum = "h1:y+wJpx64xcgO1V+RcnwW0LEHxTKRi2ZDPSBjWnrg88Q=",
        version = "v1.4.0",
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
        sum = "h1:nuJZuYpG7gTj/XqiUwg8bA0cp1+M2mC3J4g5luUYBKk=",
        version = "v1.10.1",
    )

    go_repository(
        name = "com_github_ssgreg_nlreturn_v2",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/ssgreg/nlreturn/v2",
        sum = "h1:6/s4Rc49L6Uo6RLjhWZGBpWWjfzk2yrf1nIW8m4wgVA=",
        version = "v2.1.0",
    )
    go_repository(
        name = "com_github_stackexchange_wmi",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/StackExchange/wmi",
        sum = "h1:fLjPD/aNc3UIOA6tDi6QXUemppXK3P9BI7mr2hd6gx8=",
        version = "v0.0.0-20180116203802-5d049714c4a6",
    )
    go_repository(
        name = "com_github_stretchr_objx",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/stretchr/objx",
        sum = "h1:NGXK3lHquSN08v5vWalVI/L8XU9hdzE/G6xsrze47As=",
        version = "v0.3.0",
    )
    go_repository(
        name = "com_github_stretchr_testify",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/stretchr/testify",
        sum = "h1:5TQK59W5E3v0r2duFAb7P95B6hEeOyEnHRa8MjYSMTY=",
        version = "v1.7.1",
    )
    go_repository(
        name = "com_github_subosito_gotenv",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/subosito/gotenv",
        sum = "h1:Slr1R9HxAlEKefgq5jn9U+DnETlIUa6HfgEzj0g5d7s=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_tdakkota_asciicheck",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/tdakkota/asciicheck",
        sum = "h1:HxLVTlqcHhFAz3nWUcuvpH7WuOMv8LQoCWmruLfFH2U=",
        version = "v0.0.0-20200416200610-e657995f937b",
    )
    go_repository(
        name = "com_github_tetafro_godot",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/tetafro/godot",
        sum = "h1:HzWC3XjadkyeuBZxkfAFNY20UVvle0YD51I6zf6RKlU=",
        version = "v1.3.2",
    )
    go_repository(
        name = "com_github_timakin_bodyclose",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/timakin/bodyclose",
        sum = "h1:ig99OeTyDwQWhPe2iw9lwfQVF1KB3Q4fpP3X7/2VBG8=",
        version = "v0.0.0-20200424151742-cb6215831a94",
    )
    go_repository(
        name = "com_github_tmc_grpc_websocket_proxy",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/tmc/grpc-websocket-proxy",
        sum = "h1:LnC5Kc/wtumK+WB441p7ynQJzVuNRJiqddSIE3IlSEQ=",
        version = "v0.0.0-20190109142713-0ad062ec5ee5",
    )

    go_repository(
        name = "com_github_tomarrell_wrapcheck",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/tomarrell/wrapcheck",
        sum = "h1:zV5mu0ESwb+WnzqVaW2z1DdbAP0S46UtjY8DHQupQP4=",
        version = "v0.0.0-20201130113247-1683564d9756",
    )
    go_repository(
        name = "com_github_tommy_muehle_go_mnd",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/tommy-muehle/go-mnd",
        sum = "h1:Y0bLA422kvb32uZI4fy/Plop/Tbld0l9pSzl+j1FWok=",
        version = "v1.3.1-0.20201008215730-16041ac3fe65",
    )
    go_repository(
        name = "com_github_tv42_httpunix",
        importpath = "github.com/tv42/httpunix",
        sum = "h1:G3dpKMzFDjgEh2q1Z7zUUtKa8ViPtH+ocF0bE0g00O8=",
        version = "v0.0.0-20150427012821-b75d8614f926",
    )

    go_repository(
        name = "com_github_ulikunitz_xz",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/ulikunitz/xz",
        sum = "h1:t92gobL9l3HE202wg3rlk19F6X+JOxl9BBrCCMYEYd8=",
        version = "v0.5.10",
    )
    go_repository(
        name = "com_github_ultraware_funlen",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/ultraware/funlen",
        sum = "h1:5ylVWm8wsNwH5aWo9438pwvsK0QiqVuUrt9bn7S/iLA=",
        version = "v0.0.3",
    )
    go_repository(
        name = "com_github_ultraware_whitespace",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/ultraware/whitespace",
        sum = "h1:If7Va4cM03mpgrNH9k49/VOicWpGoG70XPBFFODYDsg=",
        version = "v0.0.4",
    )
    go_repository(
        name = "com_github_uudashr_gocognit",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/uudashr/gocognit",
        sum = "h1:MoG2fZ0b/Eo7NXoIwCVFLG5JED3qgQz5/NEE+rOsjPs=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_valyala_bytebufferpool",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/valyala/bytebufferpool",
        sum = "h1:GqA5TC/0021Y/b9FG4Oi9Mr3q7XYx6KllzawFIhcdPw=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_valyala_fasthttp",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/valyala/fasthttp",
        sum = "h1:9zAqOYLl8Tuy3E5R6ckzGDJ1g8+pw15oQp2iL9Jl6gQ=",
        version = "v1.16.0",
    )
    go_repository(
        name = "com_github_valyala_quicktemplate",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/valyala/quicktemplate",
        sum = "h1:O7EuMwuH7Q94U2CXD6sOX8AYHqQqWtmIk690IhmpkKA=",
        version = "v1.6.3",
    )
    go_repository(
        name = "com_github_valyala_tcplisten",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/valyala/tcplisten",
        sum = "h1:0R4NLDRDZX6JcmhJgXi5E4b8Wg84ihbmUKp/GvSPEzc=",
        version = "v0.0.0-20161114210144-ceec8f93295a",
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
        name = "com_github_xiang90_probing",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/xiang90/probing",
        sum = "h1:eY9dn8+vbi4tKz5Qo6v2eYzo7kUS51QINcR5jNpbZS8=",
        version = "v0.0.0-20190116061207-43a291ad63a2",
    )

    go_repository(
        name = "com_github_yuin_goldmark",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "github.com/yuin/goldmark",
        sum = "h1:dPmz1Snjq0kmkz159iL7S6WzdahUTHnHB5M56WFVifs=",
        version = "v1.3.5",
    )
    go_repository(
        name = "com_gitlab_digitalxero_go_conventional_commit",
        importpath = "gitlab.com/digitalxero/go-conventional-commit",
        sum = "h1:8/dO6WWG+98PMhlZowt/YjuiKhqhGlOCwlIV8SqqGh8=",
        version = "v1.0.7",
    )

    go_repository(
        name = "com_google_cloud_go",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "cloud.google.com/go",
        sum = "h1:y/cM2iqGgGi5D5DQZl6D9STN/3dR/Vx5Mp8s752oJTY=",
        version = "v0.99.0",
    )

    go_repository(
        name = "com_google_cloud_go_bigquery",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "cloud.google.com/go/bigquery",
        sum = "h1:PQcPefKFdaIzjQFbiyOgAqyx8q5djaE7x9Sqe712DPA=",
        version = "v1.8.0",
    )
    go_repository(
        name = "com_google_cloud_go_datastore",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "cloud.google.com/go/datastore",
        sum = "h1:/May9ojXjRkPBNVrq+oWLqmWCkr4OU5uRY29bu0mRyQ=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_google_cloud_go_firestore",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "cloud.google.com/go/firestore",
        sum = "h1:8rBq3zRjnHx8UtBvaOWqBB1xq9jH6/wltfQLlTMh2Fw=",
        version = "v1.6.1",
    )
    go_repository(
        name = "com_google_cloud_go_pubsub",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "cloud.google.com/go/pubsub",
        sum = "h1:ukjixP1wl0LpnZ6LWtZJ0mX5tBmjp1f8Sqer8Z2OMUU=",
        version = "v1.3.1",
    )
    go_repository(
        name = "com_google_cloud_go_storage",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "cloud.google.com/go/storage",
        sum = "h1:6RRlFMv1omScs6iq2hfE3IvgE+l6RfJPampq8UZc5TU=",
        version = "v1.14.0",
    )
    go_repository(
        name = "com_shuralyov_dmitri_gpu_mtl",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "dmitri.shuralyov.com/gpu/mtl",
        sum = "h1:VpgP7xuJadIUuKccphEpTJnWhS2jkQyMt6Y7pJCD7fY=",
        version = "v0.0.0-20190408044501-666a987793e9",
    )
    go_repository(
        name = "in_gopkg_alecthomas_kingpin_v2",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "gopkg.in/alecthomas/kingpin.v2",
        sum = "h1:jMFz6MfLP0/4fUyZle81rXUoxOBFi19VUFKVDOQfozc=",
        version = "v2.2.6",
    )
    go_repository(
        name = "in_gopkg_check_v1",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "gopkg.in/check.v1",
        sum = "h1:Hei/4ADfdWqJk1ZMxUNpqntNwaWcugrBjAiHlqqRiVk=",
        version = "v1.0.0-20201130134442-10cb98267c6c",
    )
    go_repository(
        name = "in_gopkg_errgo_v2",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "gopkg.in/errgo.v2",
        sum = "h1:0vLT13EuvQ0hNvakwLuFZ/jYrLp5F3kcWHXdRggjCE8=",
        version = "v2.1.0",
    )
    go_repository(
        name = "in_gopkg_fsnotify_v1",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "gopkg.in/fsnotify.v1",
        sum = "h1:xOHLXZwVvI9hhs+cLKq5+I5onOuwQLhQwiu63xxlHs4=",
        version = "v1.4.7",
    )
    go_repository(
        name = "in_gopkg_ini_v1",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "gopkg.in/ini.v1",
        sum = "h1:jRskFVxYaMGAMUbN0UZ7niA9gzL9B49DOqE78vg0k3w=",
        version = "v1.66.3",
    )
    go_repository(
        name = "in_gopkg_resty_v1",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "gopkg.in/resty.v1",
        sum = "h1:CuXP0Pjfw9rOuY6EP+UvtNvt5DSqHpIxILZKT/quCZI=",
        version = "v1.12.0",
    )
    go_repository(
        name = "in_gopkg_tomb_v1",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "gopkg.in/tomb.v1",
        sum = "h1:uRGJdciOHaEIrze2W8Q3AKkepLTh2hOroT7a+7czfdQ=",
        version = "v1.0.0-20141024135613-dd632973f1e7",
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
        sum = "h1:D8xgwECY7CYvx+Y2n4sBz93Jn9JRvxdiyyo8CTfuKaY=",
        version = "v2.4.0",
    )

    go_repository(
        name = "in_gopkg_yaml_v3",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "gopkg.in/yaml.v3",
        sum = "h1:h8qDotaEPuJATrMmW04NCwg7v22aHH28wwpauUhK9Oo=",
        version = "v3.0.0-20210107192922-496545a6307b",
    )
    go_repository(
        name = "io_etcd_go_bbolt",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "go.etcd.io/bbolt",
        sum = "h1:Z/90sZLPOeCy2PwprqkFa25PdkusRzaj9P8zm/KNyvk=",
        version = "v1.3.2",
    )
    go_repository(
        name = "io_etcd_go_etcd_api_v3",
        importpath = "go.etcd.io/etcd/api/v3",
        sum = "h1:v28cktvBq+7vGyJXF8G+rWJmj+1XUmMtqcLnH8hDocM=",
        version = "v3.5.1",
    )
    go_repository(
        name = "io_etcd_go_etcd_client_pkg_v3",
        importpath = "go.etcd.io/etcd/client/pkg/v3",
        sum = "h1:XIQcHCFSG53bJETYeRJtIxdLv2EWRGxcfzR8lSnTH4E=",
        version = "v3.5.1",
    )
    go_repository(
        name = "io_etcd_go_etcd_client_v2",
        importpath = "go.etcd.io/etcd/client/v2",
        sum = "h1:vtxYCKWA9x31w0WJj7DdqsHFNjhkigdAnziDtkZb/l4=",
        version = "v2.305.1",
    )

    go_repository(
        name = "io_opencensus_go",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "go.opencensus.io",
        sum = "h1:gqCw0LfLxScz8irSi8exQc7fyQ0fKQU/qnC/X8+V/1M=",
        version = "v0.23.0",
    )
    go_repository(
        name = "io_opentelemetry_go_proto_otlp",
        importpath = "go.opentelemetry.io/proto/otlp",
        sum = "h1:rwOQPCuKAKmwGKq2aVNnYIibI6wnV7EvzgfTCzcdGg8=",
        version = "v0.7.0",
    )

    go_repository(
        name = "io_rsc_binaryregexp",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "rsc.io/binaryregexp",
        sum = "h1:HfqmD5MEmC0zvwBuF187nq9mdnXjXsSivRiXN7SmRkE=",
        version = "v0.2.0",
    )
    go_repository(
        name = "io_rsc_quote_v3",
        importpath = "rsc.io/quote/v3",
        sum = "h1:9JKUTTIUgS6kzR9mK1YuGKv6Nl+DijDNIc0ghT58FaY=",
        version = "v3.1.0",
    )
    go_repository(
        name = "io_rsc_sampler",
        importpath = "rsc.io/sampler",
        sum = "h1:7uVkIFmeBqHfdjD+gZwtXXI+RODJ2Wc4O7MPEh/QiW4=",
        version = "v1.3.0",
    )

    go_repository(
        name = "org_golang_google_api",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "google.golang.org/api",
        sum = "h1:n2bqqK895ygnBpdPDYetfy23K7fJ22wsrZKCyfuRkkA=",
        version = "v0.63.0",
    )
    go_repository(
        name = "org_golang_google_appengine",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "google.golang.org/appengine",
        sum = "h1:FZR1q0exgwxzPzp/aF+VccGrSfxfPpkBqjIIEq3ru6c=",
        version = "v1.6.7",
    )
    go_repository(
        name = "org_golang_google_genproto",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "google.golang.org/genproto",
        sum = "h1:I0YcKz0I7OAhddo7ya8kMnvprhcWM045PmkBdMO9zN0=",
        version = "v0.0.0-20211208223120-3a66f561d7aa",
    )
    go_repository(
        name = "org_golang_google_grpc",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "google.golang.org/grpc",
        sum = "h1:Eeu7bZtDZ2DpRCsLhUlcrLnvYaMK1Gz86a+hMVvELmM=",
        version = "v1.43.0",
    )
    go_repository(
        name = "org_golang_google_grpc_cmd_protoc_gen_go_grpc",
        importpath = "google.golang.org/grpc/cmd/protoc-gen-go-grpc",
        sum = "h1:M1YKkFIboKNieVO5DLUEVzQfGwJD30Nv2jfUgzb5UcE=",
        version = "v1.1.0",
    )

    go_repository(
        name = "org_golang_google_protobuf",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "google.golang.org/protobuf",
        sum = "h1:SnqbnDw1V7RiZcXPx5MEeqPv2s79L9i7BJUlG/+RurQ=",
        version = "v1.27.1",
    )
    

    go_repository(
        name = "org_golang_x_exp",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/exp",
        sum = "h1:QE6XYQK6naiK1EPAe1g/ILLxN5RBoH5xkJk3CqlMI/Y=",
        version = "v0.0.0-20200224162631-6cc2880d07d6",
    )
    go_repository(
        name = "org_golang_x_image",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/image",
        sum = "h1:+qEpEAPhDZ1o0x3tHzZTQDArnOixOzGD9HUJfcg0mb4=",
        version = "v0.0.0-20190802002840-cff245a6509b",
    )
    go_repository(
        name = "org_golang_x_lint",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/lint",
        sum = "h1:VLliZ0d+/avPrXXH+OakdXhpJuEoBZuwh1m2j7U6Iug=",
        version = "v0.0.0-20210508222113-6edffad5e616",
    )

    go_repository(
        name = "org_golang_x_mobile",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/mobile",
        sum = "h1:OVJ6QQUBAesB8CZijKDSsXX7xYVtUhrkY0gwMfbi4p4=",
        version = "v0.0.0-20200801112145-973feb4309de",
    )
    go_repository(
        name = "org_golang_x_mod",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/mod",
        sum = "h1:UG21uOlmZabA4fW5i7ZX6bjw1xELEGg/ZLgZq9auk/Q=",
        version = "v0.5.0",
    )
    go_repository(
        name = "org_golang_x_net",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/net",
        sum = "h1:oA4XRj0qtSt8Yo1Zms0CUlsT3KG69V2UGQWPBxujDmc=",
        version = "v0.0.0-20220225172249-27dd8689420f",
    )
    go_repository(
        name = "org_golang_x_oauth2",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/oauth2",
        sum = "h1:RerP+noqYHUQ8CMRcPlC2nvTa4dcBIjegkuWdcUDuqg=",
        version = "v0.0.0-20211104180415-d3ed0bb246c8",
    )
    go_repository(
        name = "org_golang_x_sync",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/sync",
        sum = "h1:5KslGYwFpkhGh+Q16bwMP3cOontH8FOep7tGV86Y7SQ=",
        version = "v0.0.0-20210220032951-036812b2e83c",
    )
    go_repository(
        name = "org_golang_x_sys",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/sys",
        sum = "h1:saXMvIOKvRFwbOMicHXr0B1uwoxq9dGmLe5ExMES6c4=",
        version = "v0.0.0-20220318055525-2edf467146b5",
    )

    go_repository(
        name = "org_golang_x_term",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/term",
        sum = "h1:JGgROgKl9N8DuW20oFS5gxc+lE67/N3FcwmBPMe7ArY=",
        version = "v0.0.0-20210927222741-03fcf44c2211",
    )
    go_repository(
        name = "org_golang_x_text",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/text",
        sum = "h1:olpwvP2KacW1ZWvsR7uQhoyTYvKAupfQrRGBFM352Gk=",
        version = "v0.3.7",
    )
    go_repository(
        name = "org_golang_x_time",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/time",
        sum = "h1:/5xXl8Y5W96D+TtHSlonuFqGHIWVuyCkGJLwGh9JJFs=",
        version = "v0.0.0-20191024005414-555d28b269f0",
    )
    go_repository(
        name = "org_golang_x_tools",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/tools",
        sum = "h1:ouewzE6p+/VEB31YYnTbEJdi8pFqKp4P4n85vwo3DHA=",
        version = "v0.1.5",
    )
    go_repository(
        name = "org_golang_x_xerrors",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "golang.org/x/xerrors",
        sum = "h1:go1bK/D/BFZV2I8cIQd1NKEZ+0owSTG1fDTci4IqFcE=",
        version = "v0.0.0-20200804184101-5ec99f83aff1",
    )
    go_repository(
        name = "org_uber_go_atomic",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "go.uber.org/atomic",
        sum = "h1:ADUqmZGgLDDfbSL9ZmPxKTybcoEYHgpYfELNoN+7hsw=",
        version = "v1.7.0",
    )
    go_repository(
        name = "org_uber_go_goleak",
        importpath = "go.uber.org/goleak",
        sum = "h1:z+mqJhf6ss6BSfSM671tgKyZBFPTTJM+HLxnhPC3wu0=",
        version = "v1.1.10",
    )

    go_repository(
        name = "org_uber_go_multierr",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "go.uber.org/multierr",
        sum = "h1:y6IPFStTAIT5Ytl7/XYmHvzXQ7S3g/IeZW9hyZ5thw4=",
        version = "v1.6.0",
    )
    go_repository(
        name = "org_uber_go_zap",
        build_directives = ["gazelle:go_naming_convention_external go_default_library"],
        importpath = "go.uber.org/zap",
        sum = "h1:MTjgFu6ZLKvY6Pvaqk97GlxNBuMpV4Hy/3P6tRGlI2U=",
        version = "v1.17.0",
    )
