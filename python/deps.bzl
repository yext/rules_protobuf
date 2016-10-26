DEPS = {

    "protoc_gen_grpc_python": {
        "rule": "bind",
        "actual": "@com_github_grpc_grpc//:grpc_python_plugin",
    },

    "org_python_pypi_grpcio": {
        "rule": "pypi_universal_repository",
        "pkg": "grpcio",
        "version": "1.0.1rc1",
    },

    "org_python_pypi_grpcio_wheel": {
        "rule": "pypi_wheel_repository",
        "pkg": "grpcio",
        "version": "1.0.1rc1",
    },

}
