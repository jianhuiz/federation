load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "client.go",
        "remote_api.go",
    ],
    importpath = "google.golang.org/appengine/remote_api",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/github.com/golang/protobuf/proto:go_default_library",
        "//vendor/golang.org/x/net/context:go_default_library",
        "//vendor/google.golang.org/appengine:go_default_library",
        "//vendor/google.golang.org/appengine/internal:go_default_library",
        "//vendor/google.golang.org/appengine/internal/remote_api:go_default_library",
        "//vendor/google.golang.org/appengine/log:go_default_library",
        "//vendor/google.golang.org/appengine/user:go_default_library",
    ],
)

go_test(
    name = "go_default_test",
    srcs = ["client_test.go"],
    importpath = "google.golang.org/appengine/remote_api",
    library = ":go_default_library",
    deps = [
        "//vendor/golang.org/x/net/context:go_default_library",
        "//vendor/google.golang.org/appengine/datastore:go_default_library",
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
