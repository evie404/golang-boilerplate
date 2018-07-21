load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "ba79c532ac400cefd1859cbc8a9829346aa69e3b99482cd5a54432092cbc3933",
    urls = ["https://github.com/bazelbuild/rules_go/releases/download/0.13.0/rules_go-0.13.0.tar.gz"],
)

http_archive(
    name = "bazel_gazelle",
    sha256 = "bc653d3e058964a5a26dcad02b6c72d7d63e6bb88d94704990b908a1445b8758",
    urls = ["https://github.com/bazelbuild/bazel-gazelle/releases/download/0.13.0/bazel-gazelle-0.13.0.tar.gz"],
)

http_archive(
    name = "com_github_bazelbuild_buildtools",
    strip_prefix = "buildtools-41827ab190fd867ed2d0f5bd127b0b27f98f606f",
    url = "https://github.com/bazelbuild/buildtools/archive/41827ab190fd867ed2d0f5bd127b0b27f98f606f.zip",
)

# own fork that works with rules_go/gazelle 0.13.0
git_repository(
    name = "org_pubref_rules_protobuf",
    commit = "36a15b18ee22be726a412282311b67786befcd3a",
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
