package(default_visibility = ["//visibility:public"])

licenses(["notice"])

load(
    "@io_bazel_rules_go//go:def.bzl",
    "go_library",
)

go_library(
    name = "gopkg.in/yaml.v2",
    srcs = glob(
      ["gopkg.in/yaml.v2/*.go"],
      exclude = ["gopkg.in/yaml.v2/*_test.go"]
    ),
)
