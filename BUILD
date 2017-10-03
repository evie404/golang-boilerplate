package(default_visibility = ["//visibility:public"])

load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library", "go_test", "go_repository", "go_prefix")

go_prefix("github.com/rickypai/golang-boilerplate")

go_library(
    name = "go_default_library",
    srcs = ["main.go"],
    importpath = "github.com/rickypai/golang-boilerplate/src/github.com/rickypai/golang-boilerplate",
    visibility = ["//visibility:private"],
    deps = [
        "//vendor:gopkg.in/yaml.v2",
    ],
)

go_binary(
    name = "golang-boilerplate",
    importpath = "github.com/rickypai/golang-boilerplate/src/github.com/rickypai/golang-boilerplate",
    library = ":go_default_library",
    visibility = ["//visibility:public"],
)
