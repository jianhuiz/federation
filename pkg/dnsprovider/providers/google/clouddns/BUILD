package(default_visibility = ["//visibility:public"])

load(
    "@io_bazel_rules_go//go:def.bzl",
    "go_library",
    "go_test",
)

go_library(
    name = "go_default_library",
    srcs = [
        "clouddns.go",
        "interface.go",
        "rrchangeset.go",
        "rrset.go",
        "rrsets.go",
        "zone.go",
        "zones.go",
    ],
    importpath = "k8s.io/federation/pkg/dnsprovider/providers/google/clouddns",
    deps = [
        "//pkg/dnsprovider:go_default_library",
        "//pkg/dnsprovider/providers/google/clouddns/internal:go_default_library",
        "//pkg/dnsprovider/providers/google/clouddns/internal/interfaces:go_default_library",
        "//pkg/dnsprovider/providers/google/clouddns/internal/stubs:go_default_library",
        "//pkg/dnsprovider/rrstype:go_default_library",
        "//vendor/cloud.google.com/go/compute/metadata:go_default_library",
        "//vendor/github.com/golang/glog:go_default_library",
        "//vendor/golang.org/x/oauth2:go_default_library",
        "//vendor/golang.org/x/oauth2/google:go_default_library",
        "//vendor/google.golang.org/api/compute/v1:go_default_library",
        "//vendor/google.golang.org/api/dns/v1:go_default_library",
        "//vendor/google.golang.org/api/googleapi:go_default_library",
        "//vendor/gopkg.in/gcfg.v1:go_default_library",
        "//vendor/k8s.io/kubernetes/pkg/cloudprovider/providers/gce:go_default_library",
    ],
)

go_test(
    name = "go_default_test",
    srcs = ["clouddns_test.go"],
    importpath = "k8s.io/federation/pkg/dnsprovider/providers/google/clouddns",
    library = ":go_default_library",
    deps = [
        "//pkg/dnsprovider:go_default_library",
        "//pkg/dnsprovider/rrstype:go_default_library",
        "//pkg/dnsprovider/tests:go_default_library",
    ],
)

filegroup(
    name = "package-srcs",
    srcs = glob(["**"]),
    tags = ["automanaged"],
    visibility = ["//visibility:private"],
)

filegroup(
    name = "all-srcs",
    srcs = [
        ":package-srcs",
        "//pkg/dnsprovider/providers/google/clouddns/internal:all-srcs",
    ],
    tags = ["automanaged"],
)
