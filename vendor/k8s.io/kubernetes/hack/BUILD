package(default_visibility = ["//visibility:public"])

load(
    "@io_bazel_rules_go//go:def.bzl",
    "go_binary",
    "go_library",
    "go_test",
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
        "//vendor/k8s.io/kubernetes/hack/boilerplate:all-srcs",
        "//vendor/k8s.io/kubernetes/hack/cmd/teststale:all-srcs",
        "//vendor/k8s.io/kubernetes/hack/e2e-internal:all-srcs",
        "//vendor/k8s.io/kubernetes/hack/lib:all-srcs",
        "//vendor/k8s.io/kubernetes/hack/make-rules:all-srcs",
    ],
    tags = ["automanaged"],
)

sh_test(
    name = "verify-boilerplate",
    srcs = ["verify-boilerplate.sh"],
    data = ["//:all-srcs"],
    tags = ["manual"],
)

# Disable gofmt test until we can figure out how to access the gofmt binary.
# https://github.com/bazelbuild/rules_go/issues/511
#sh_test(
#    name = "verify-gofmt",
#    srcs = ["verify-gofmt.sh"],
#    data = [
#        "//:all-srcs",
#        "@io_bazel_rules_go_toolchain//:toolchain",
#    ],
#    tags = ["manual"],
#)

test_suite(
    name = "verify-all",
    tags = ["manual"],
    tests = [
        "verify-boilerplate",
        #        "verify-gofmt",
    ],
)

go_binary(
    name = "hack",
    importpath = "k8s.io/kubernetes/hack",
    library = ":go_default_library",
)

go_test(
    name = "go_default_test",
    srcs = ["e2e_test.go"],
    data = glob(["testdata/**"]),
    importpath = "k8s.io/kubernetes/hack",
    library = ":go_default_library",
)

go_library(
    name = "go_default_library",
    srcs = ["e2e.go"],
    importpath = "k8s.io/kubernetes/hack",
)
