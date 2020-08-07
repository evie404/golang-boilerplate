load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "0310e837aed522875791750de44408ec91046c630374990edd51827cb169f616",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.23.7/rules_go-v0.23.7.tar.gz",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.23.7/rules_go-v0.23.7.tar.gz",
    ],
)

http_archive(
    name = "bazel_gazelle",
    sha256 = "cdb02a887a7187ea4d5a27452311a75ed8637379a1287d8eeb952138ea485f7d",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.21.1/bazel-gazelle-v0.21.1.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.21.1/bazel-gazelle-v0.21.1.tar.gz",
    ],
)

GAZELLE_SHA = "30aa1d7c9406aaf0838781e907eefc4bc2d1eddc"

http_archive(
    name = "bazel_gazelle",
    sha256 = "5135ec3b4d9e83cf4251530b1e2fd566a372c4b1a3e743a15c9d644ccbcddd11",
    strip_prefix = "bazel-gazelle-" + GAZELLE_SHA,
    url = "https://github.com/bazelbuild/bazel-gazelle/archive/" + GAZELLE_SHA + ".zip",
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

BAZEL_BUILD_TOOLS_SHA = "f76b57a9805f2096426f8668a363ae6ccae473ec"

http_archive(
    name = "com_github_bazelbuild_buildtools",
    sha256 = "afea5de80bb1ebffa428feca7aac0a866b8155a838a8e3c4e3d68089c5935123",
    strip_prefix = "buildtools-" + BAZEL_BUILD_TOOLS_SHA,
    url = "https://github.com/bazelbuild/buildtools/archive/" + BAZEL_BUILD_TOOLS_SHA + ".zip",
)

ATLASSIAN_BAZEL_TOOLS_SHA = "d885a03d1aeaadb2acb17423e00e8579bcfd9e80"

http_archive(
    name = "com_github_atlassian_bazel_tools",
    sha256 = "cabca5f103e1cca401de8831c2e10ae715d92a8a19d628a41ac3dbd43fe165f6",
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
    commit = "31ebe2ac71400344a5db91ffc13c4ddfb7589f92",  # v3.12.3
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
    commit = "754ee590a4f386d0910d887f3b8776354042260b",  # 1.29.1
    importpath = "google.golang.org/grpc",
    repo_url = "github.com/grpc/grpc-go",
    sha256 = "9a6287473298cac4399d65f54e9db5a4104d8530125363430da4ca072e8de789",
)

go_repository(
    name = "org_golang_x_net",
    importpath = "golang.org/x/net",
    sum = "h1:oWX7TPOiFAMXLq8o0ikBYfCJVlRHBcsciT5bXOrH628=",
    version = "v0.0.0-20190311183353-d8887717615a",
)

go_repository(
    name = "org_golang_x_text",
    importpath = "golang.org/x/text",
    sum = "h1:g61tztE5qeGQ89tm6NTjjM9VPIm088od1l6aSorWRWg=",
    version = "v0.3.0",
)

github_go_repository(
    name = "org_golang_x_sys",
    commit = "0732a990476f7f2f5f7200b39ba4ab730c0f09f8",
    importpath = "golang.org/x/sys",
    repo_url = "github.com/golang/sys",
)
