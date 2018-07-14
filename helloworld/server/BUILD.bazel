load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["main.go"],
    importpath = "github.com/rickypai/golang-boilerplate/helloworld/server",
    visibility = ["//visibility:private"],
    deps = [
        "//common:go_default_library",
        "//protobufs:helloworld",
        "@org_golang_google_grpc//:go_default_library",
        "@org_golang_google_grpc//reflection:go_default_library",
        "@org_golang_x_net//context:go_default_library",
    ],
)

go_binary(
    name = "server",
    embed = [":go_default_library"],
    visibility = ["//visibility:public"],
)
