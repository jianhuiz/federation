load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library", "go_test")

go_library(
    name = "go_default_library",
    srcs = [
        "restful-CORS-filter.go",
        "restful-NCSA-logging.go",
        "restful-basic-authentication.go",
        "restful-cpuprofiler-service.go",
        "restful-curly-router.go",
        "restful-encoding-filter.go",
        "restful-filters.go",
        "restful-form-handling.go",
        "restful-hello-world.go",
        "restful-html-template.go",
        "restful-multi-containers.go",
        "restful-no-cache-filter.go",
        "restful-options-filter.go",
        "restful-path-tail.go",
        "restful-pre-post-filters.go",
        "restful-resource-functions.go",
        "restful-serve-static.go",
        "restful-swagger.go",
        "restful-user-resource.go",
        "restful-user-service.go",
    ],
    importpath = "github.com/emicklei/go-restful/examples",
    visibility = ["//visibility:private"],
    deps = [
        "//vendor/github.com/emicklei/go-restful:go_default_library",
        "//vendor/github.com/emicklei/go-restful-swagger12:go_default_library",
        "//vendor/github.com/gorilla/schema:go_default_library",
    ],
)

go_binary(
    name = "examples",
    importpath = "github.com/emicklei/go-restful/examples",
    library = ":go_default_library",
    visibility = ["//visibility:public"],
)

go_test(
    name = "go_default_test",
    srcs = [
        "restful-curly-router_test.go",
        "restful-route_test.go",
        "restful-routefunction_test.go",
    ],
    importpath = "github.com/emicklei/go-restful/examples",
    library = ":go_default_library",
    deps = ["//vendor/github.com/emicklei/go-restful:go_default_library"],
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
        "//vendor/github.com/emicklei/go-restful/examples/google_app_engine:all-srcs",
        "//vendor/github.com/emicklei/go-restful/examples/msgpack:all-srcs",
    ],
    tags = ["automanaged"],
    visibility = ["//visibility:public"],
)
