load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")
load("@org_pubref_rules_protobuf//go:rules.bzl", "GRPC_COMPILE_DEPS")

go_library(
    name = "go_default_library",
    srcs = ["main.go"],
    importpath = "github.com/rickypai/golang-boilerplate/server",
    visibility = ["//visibility:private"],
    deps = [
        "//protobufs:helloworld",
    ] + GRPC_COMPILE_DEPS,
)

go_binary(
    name = "golang-boilerplate",
    embed = [":go_default_library"],
    visibility = ["//visibility:public"],
)
