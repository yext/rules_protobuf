package(default_visibility = ["//visibility:public"])

load("//protobuf:rules.bzl", "proto_language")

proto_language(
    name = "closure",
    pb_plugin_name = "js",
    pb_file_extensions = [".js"],
    pb_options = [
        "import_style=closure",
        "error_on_name_conflict",
        "binary",
    ],
    pb_inputs = [
        "@com_github_google_protobuf//:well_known_protos",
    ],
    pb_imports = [
        "external/com_github_google_protobuf/src/",
    ],
    output_to_library = True,
)

proto_language(
    name = "browser",
    pb_plugin_name = "js",
    pb_file_extensions = ["_pb.js"],
    pb_options = [
        "import_style=browser",
        "error_on_name_conflict",
        "binary",
    ],
)
