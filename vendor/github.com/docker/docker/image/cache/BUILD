load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "cache.go",
        "compare.go",
    ],
    importpath = "github.com/docker/docker/image/cache",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/github.com/docker/docker/api/types/container:go_default_library",
        "//vendor/github.com/docker/docker/dockerversion:go_default_library",
        "//vendor/github.com/docker/docker/image:go_default_library",
        "//vendor/github.com/docker/docker/layer:go_default_library",
        "//vendor/github.com/pkg/errors:go_default_library",
    ],
)

go_test(
    name = "go_default_test",
    srcs = ["compare_test.go"],
    importpath = "github.com/docker/docker/image/cache",
    library = ":go_default_library",
    deps = [
        "//vendor/github.com/docker/docker/api/types/container:go_default_library",
        "//vendor/github.com/docker/docker/api/types/strslice:go_default_library",
        "//vendor/github.com/docker/go-connections/nat:go_default_library",
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
    srcs = [":package-srcs"],
    tags = ["automanaged"],
    visibility = ["//visibility:public"],
)
