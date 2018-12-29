load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "96e50aca9efb652db6271ba9cacf21f8f1fb29b2eab57ebaacdc071a022d1ad2",
    urls = ["https://github.com/bazelbuild/rules_go/releases/download/0.13.1/rules_go-0.13.1.tar.gz"],
)

http_archive(
    name = "bazel_gazelle",
    sha256 = "bc653d3e058964a5a26dcad02b6c72d7d63e6bb88d94704990b908a1445b8758",
    urls = ["https://github.com/bazelbuild/bazel-gazelle/releases/download/0.13.0/bazel-gazelle-0.13.0.tar.gz"],
)

BAZEL_BUILD_TOOLS_SHA = "41d89cd7c8328bb912f3b8f50d2dc970805d21f8"

http_archive(
    name = "com_github_bazelbuild_buildtools",
    strip_prefix = "buildtools-"+BAZEL_BUILD_TOOLS_SHA,
    url = "https://github.com/bazelbuild/buildtools/archive/"+BAZEL_BUILD_TOOLS_SHA+".zip",
)

ATLASSIAN_BAZEL_TOOLS_SHA = "1e588b1efac2c9dca66626b62a873f65de64de4b"

http_archive(
    name = "com_github_atlassian_bazel_tools",
    strip_prefix = "bazel-tools-"+ATLASSIAN_BAZEL_TOOLS_SHA,
    urls = ["https://github.com/atlassian/bazel-tools/archive/"+ATLASSIAN_BAZEL_TOOLS_SHA+".zip"],
)

# own fork that works with rules_go/gazelle 0.13.1
git_repository(
    name = "org_pubref_rules_protobuf",
    commit = "714975262f04149ac963a4fbbf7e09aaaa33af40",
    remote = "https://github.com/rickypai/rules_protobuf",
)

git_repository(
    name = "io_bazel_rules_docker",
    commit = "c7a93454d27e09ef707dfca53887ed0ff4372f04",
    remote = "https://github.com/bazelbuild/rules_docker.git",
)

git_repository(
    name = "io_bazel_rules_k8s",
    commit = "8c615639dbb4592f4a471fc22f19c84f8fc35569",
    remote = "https://github.com/bazelbuild/rules_k8s.git",
)

load("@io_bazel_rules_go//go:def.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains()

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies", "go_repository")

gazelle_dependencies()

load("@com_github_bazelbuild_buildtools//buildifier:deps.bzl", "buildifier_dependencies")

buildifier_dependencies()

load("@org_pubref_rules_protobuf//go:rules.bzl", "go_proto_repositories")

go_proto_repositories()

load("@com_github_atlassian_bazel_tools//goimports:deps.bzl", "goimports_dependencies")

goimports_dependencies()

load(
    "@io_bazel_rules_docker//container:container.bzl",
    "container_pull",
    container_repositories = "repositories",
)
load(
    "@io_bazel_rules_docker//go:image.bzl",
    _go_image_repos = "repositories",
)

_go_image_repos()

load("@io_bazel_rules_k8s//k8s:k8s.bzl", "k8s_repositories")

k8s_repositories()
