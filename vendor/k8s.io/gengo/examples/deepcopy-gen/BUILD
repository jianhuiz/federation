load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["main.go"],
    importpath = "k8s.io/gengo/examples/deepcopy-gen",
    visibility = ["//visibility:private"],
    deps = [
        "//vendor/github.com/golang/glog:go_default_library",
        "//vendor/github.com/spf13/pflag:go_default_library",
        "//vendor/k8s.io/gengo/args:go_default_library",
        "//vendor/k8s.io/gengo/examples/deepcopy-gen/generators:go_default_library",
    ],
)

go_binary(
    name = "deepcopy-gen",
    importpath = "k8s.io/gengo/examples/deepcopy-gen",
    library = ":go_default_library",
    visibility = ["//visibility:public"],
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
        "//vendor/k8s.io/gengo/examples/deepcopy-gen/generators:all-srcs",
        "//vendor/k8s.io/gengo/examples/deepcopy-gen/output_tests/builtins:all-srcs",
        "//vendor/k8s.io/gengo/examples/deepcopy-gen/output_tests/interfaces:all-srcs",
        "//vendor/k8s.io/gengo/examples/deepcopy-gen/output_tests/maps:all-srcs",
        "//vendor/k8s.io/gengo/examples/deepcopy-gen/output_tests/otherpkg:all-srcs",
        "//vendor/k8s.io/gengo/examples/deepcopy-gen/output_tests/pointer:all-srcs",
        "//vendor/k8s.io/gengo/examples/deepcopy-gen/output_tests/slices:all-srcs",
        "//vendor/k8s.io/gengo/examples/deepcopy-gen/output_tests/structs:all-srcs",
        "//vendor/k8s.io/gengo/examples/deepcopy-gen/output_tests/wholepkg:all-srcs",
    ],
    tags = ["automanaged"],
    visibility = ["//visibility:public"],
)
