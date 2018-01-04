# workspace(name = "golang_boilerplate")

git_repository(
    name = "io_bazel_rules_go",
    commit = "85332458a80bc586bc6233b6d20677882455c779",
    remote = "https://github.com/bazelbuild/rules_go.git",
)

http_archive(
    name = "bazel_gazelle",
    url = "https://github.com/bazelbuild/bazel-gazelle/releases/download/0.8/bazel-gazelle-0.8.tar.gz",
    sha256 = "e3dadf036c769d1f40603b86ae1f0f90d11837116022d9b06e4cd88cae786676",
)
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

load("@io_bazel_rules_go//go:def.bzl", "go_rules_dependencies", "go_register_toolchains")

go_rules_dependencies()

go_register_toolchains()

gazelle_dependencies()
