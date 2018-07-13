package(default_visibility = ["//visibility:public"])

load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")
load("@bazel_gazelle//:def.bzl", "gazelle")

gazelle(
    name = "gazelle",
    external = "vendored",
    prefix = "github.com/rickypai/golang-boilerplate",
)

go_library(
    name = "go_default_library",
    srcs = ["main.go"],
    importpath = "github.com/rickypai/golang-boilerplate",
    visibility = ["//visibility:private"],
    deps = [
        "//vendor/gopkg.in/yaml.v2:go_default_library",
    ],
)

go_binary(
    name = "golang-boilerplate",
    embed = [":go_default_library"],
    visibility = ["//visibility:public"],
)
