load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "b725e6497741d7fc2d55fcc29a276627d10e43fa5d0bb692692890ae30d98d00",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.24.3/rules_go-v0.24.3.tar.gz",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.24.3/rules_go-v0.24.3.tar.gz",
    ],
)

http_archive(
    name = "bazel_gazelle",
    sha256 = "72d339ff874a382f819aaea80669be049069f502d6c726a07759fdca99653c48",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.22.1/bazel-gazelle-v0.22.1.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.22.1/bazel-gazelle-v0.22.1.tar.gz",
    ],
)

# github_go_repository is a thin wrapper around gazelle's go_repository which supports some level of http caching
http_archive(
    name = "github_go_repository",
    sha256 = "2e469317040f6a96a065109e6b7c68bfbf6eedd831b5ddd1d8bd62ed567f3a17",
    strip_prefix = "bazel_github_go_repository-0.1",
    urls = [
        "https://github.com/rickypai/bazel_github_go_repository/archive/0.1.zip",
    ],
)

load("@github_go_repository//:def.bzl", "github_go_repository")

BAZEL_BUILD_TOOLS_SHA = "e6efbf6df90bec363c3cbd564b72be6c8a309f14"

http_archive(
    name = "com_github_bazelbuild_buildtools",
    sha256 = "ec0e3f910b476b40e0ef26b1b163efa4d0dc56a79d700da81de3aa962ebb2f9e",
    strip_prefix = "buildtools-" + BAZEL_BUILD_TOOLS_SHA,
    url = "https://github.com/bazelbuild/buildtools/archive/" + BAZEL_BUILD_TOOLS_SHA + ".zip",
)

ATLASSIAN_BAZEL_TOOLS_SHA = "6cb4f87bb5136762f2be00123f1739ab2f1cd263"

http_archive(
    name = "com_github_atlassian_bazel_tools",
    sha256 = "104e4520e386ad13d8030121093f224a02628738d12ee82f72cf28a515c783f2",
    strip_prefix = "bazel-tools-" + ATLASSIAN_BAZEL_TOOLS_SHA,
    urls = ["https://github.com/atlassian/bazel-tools/archive/" + ATLASSIAN_BAZEL_TOOLS_SHA + ".zip"],
)

http_archive(
    name = "io_bazel_rules_docker",
    sha256 = "4521794f0fba2e20f3bf15846ab5e01d5332e587e9ce81629c7f96c793bb7036",
    strip_prefix = "rules_docker-0.14.4",
    urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.14.4/rules_docker-v0.14.4.tar.gz"],
)

git_repository(
    name = "com_google_protobuf",
    commit = "fde7cf7358ec7cd69e8db9be4f1fa6a5c431386a",  # v3.13.0
    remote = "https://github.com/protocolbuffers/protobuf",
)

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")

protobuf_deps()

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains()

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies", "go_repository")

gazelle_dependencies()

load("@com_github_bazelbuild_buildtools//buildifier:deps.bzl", "buildifier_dependencies")

buildifier_dependencies()

load("@com_github_atlassian_bazel_tools//goimports:deps.bzl", "goimports_dependencies")

goimports_dependencies()

load(
    "@io_bazel_rules_docker//repositories:repositories.bzl",
    container_repositories = "repositories",
)

container_repositories()

load(
    "@io_bazel_rules_docker//container:container.bzl",
    "container_pull",
)
load(
    "@io_bazel_rules_docker//go:image.bzl",
    _go_image_repos = "repositories",
)

_go_image_repos()

github_go_repository(
    name = "org_golang_google_grpc",
    commit = "5e8f83304c0563d1ba74db05fee83d9c18ab9a58",  # 1.32.0
    importpath = "google.golang.org/grpc",
    repo_url = "github.com/grpc/grpc-go",
    sha256 = "160fc44859435b70beb8e73f4144ba12511377993c34f6429f301a0121204638",
)

github_go_repository(
    name = "org_golang_x_net",
    importpath = "golang.org/x/net",
    commit = "ab34263943818b32f575efc978a3d24e80b04bd7",  # release-branch.go1.15
    repo_url = "github.com/golang/net",
    sha256 = "7f3c48e6aa4dfed3d52639e97d216b9393d31b4c5d6a2da7a898f025d9d41ac7",
)

github_go_repository(
    name = "org_golang_x_text",
    importpath = "golang.org/x/text",
    commit = "afb9336c4530b4b18f37130eab53f245f7d6821e",  # release-branch.go1.15
    repo_url = "github.com/golang/text",
    sha256 = "b8a3d423db1d9936925ef28270df384ab7e9c256841f9545f6233fcb3f397b1b",
)

github_go_repository(
    name = "org_golang_x_mod",
    commit = "859b3ef565e237f9f1a0fb6b55385c497545680d",  # release-branch.go1.15
    importpath = "golang.org/x/mod",
    repo_url = "github.com/golang/mod",
    sha256 = "0e93ead99da2660f235995b29559cc13f5268e2bace794aac87ccf83e6465a16",
)
