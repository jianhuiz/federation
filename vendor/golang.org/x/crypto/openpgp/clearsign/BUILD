load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = ["clearsign.go"],
    importpath = "golang.org/x/crypto/openpgp/clearsign",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/golang.org/x/crypto/openpgp/armor:go_default_library",
        "//vendor/golang.org/x/crypto/openpgp/errors:go_default_library",
        "//vendor/golang.org/x/crypto/openpgp/packet:go_default_library",
    ],
)

go_test(
    name = "go_default_test",
    srcs = ["clearsign_test.go"],
    importpath = "golang.org/x/crypto/openpgp/clearsign",
    library = ":go_default_library",
    deps = ["//vendor/golang.org/x/crypto/openpgp:go_default_library"],
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
