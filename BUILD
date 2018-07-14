load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")
load("@bazel_gazelle//:def.bzl", "gazelle")
load("@com_github_bazelbuild_buildtools//buildifier:def.bzl", "buildifier")

gazelle(
    name = "gazelle",
    external = "external",
    prefix = "github.com/rickypai/golang-boilerplate",
)

buildifier(
    name = "buildifier",
)

go_library(
    name = "go_default_library",
    srcs = ["main.go"],
    importpath = "github.com/rickypai/golang-boilerplate",
    visibility = ["//visibility:private"],
    deps = [
        "@in_gopkg_yaml_v2//:go_default_library",
    ],
)

go_binary(
    name = "golang-boilerplate",
    embed = [":go_default_library"],
    visibility = ["//visibility:public"],
)
