package(default_visibility = ["//visibility:public"])

load("//protobuf:rules.bzl", "proto_language")

# Proto language definition without well-known types built-in.

proto_language(
    name = "go_bare",
    pb_plugin_name = "go",
    pb_file_extensions = [".pb.go"],
    pb_plugin = "@com_github_golang_protobuf//protoc-gen-go",
    pb_plugin_implements_grpc = True,
    prefix = "//:go_prefix",
)

# Proto language definition that includes out-of-the-box support for
# well-known types.

proto_language(
    name = "go",
    pb_file_extensions = [".pb.go"],
    pb_plugin = "@com_github_golang_protobuf//protoc-gen-go",
    pb_plugin_implements_grpc = True,
    prefix = "//:go_prefix",
    importmap = {
        "google/protobuf/descriptor.proto": "github.com/golang/protobuf/protoc-gen-go/descriptor",
        "google/protobuf/compiler/plugin.proto": "github.com/golang/protobuf/protoc-gen-go/plugin",
    },
    pb_imports = [
        "external/com_github_google_protobuf/src",
    ],
    pb_inputs = [
        "@com_github_google_protobuf//:well_known_protos",
    ],
    pb_compile_deps = [
        "@com_github_golang_protobuf//protoc-gen-go/descriptor:go_default_library",
        "@com_github_golang_protobuf//protoc-gen-go/plugin:go_default_library",
        "@com_github_golang_protobuf//ptypes/any:go_default_library",
        "@com_github_golang_protobuf//ptypes/duration:go_default_library",
        "@com_github_golang_protobuf//ptypes/empty:go_default_library",
        "@com_github_golang_protobuf//ptypes/struct:go_default_library",
        "@com_github_golang_protobuf//ptypes/timestamp:go_default_library",
        "@com_github_golang_protobuf//ptypes/wrappers:go_default_library",
    ],
)
