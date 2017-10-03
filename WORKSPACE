# workspace(name = "golang_boilerplate")

git_repository(
    name = "io_bazel_rules_go",
    commit = "51d6a4ce3567ca45deefbf298cea1f9b21abeb10",
    remote = "https://github.com/bazelbuild/rules_go.git",
)

load("@io_bazel_rules_go//go:def.bzl", "go_rules_dependencies", "go_register_toolchains")

go_rules_dependencies()

go_register_toolchains()
