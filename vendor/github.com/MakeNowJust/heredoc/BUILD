load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = ["heredoc.go"],
    importpath = "github.com/MakeNowJust/heredoc",
    visibility = ["//visibility:public"],
)

go_test(
    name = "go_default_xtest",
    srcs = [
        "example_test.go",
        "heredoc_test.go",
    ],
    importpath = "github.com/MakeNowJust/heredoc_test",
    deps = [":go_default_library"],
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
        "//vendor/github.com/MakeNowJust/heredoc/dot:all-srcs",
    ],
    tags = ["automanaged"],
    visibility = ["//visibility:public"],
)
