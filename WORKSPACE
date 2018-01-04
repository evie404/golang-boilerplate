# workspace(name = "golang_boilerplate")

git_repository(
    name = "io_bazel_rules_go",
    commit = "85332458a80bc586bc6233b6d20677882455c779",
    remote = "https://github.com/bazelbuild/rules_go.git",
)

load("@io_bazel_rules_go//go:def.bzl", "go_rules_dependencies", "go_register_toolchains")

go_rules_dependencies()

go_register_toolchains()
