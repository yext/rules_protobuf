load("//protobuf:rules.bzl", "proto_compile", "proto_repositories")
load("//python:deps.bzl", "DEPS")
load("//cpp:rules.bzl", "cpp_proto_repositories")

load("@com_github_gengo_rules_pypi//pypi:def.bzl",
     "pypi_universal_repository",
     "pypi_wheel_repository")


def py_proto_repositories(
    omit_cpp_repositories = False,
    lang_deps = DEPS,
    lang_requires = [
      "protoc_gen_grpc_python",
      "org_python_pypi_grpcio",
    ], **kwargs):

  if not omit_cpp_repositories:
    cpp_proto_repositories()

  rem = proto_repositories(lang_deps = lang_deps,
                           lang_requires = lang_requires,
                           **kwargs)

  # Load remaining (pypi) deps
  for dep in rem:
    rule = dep.pop("rule")
    dep["python"] = "/usr/local/Cellar/python/2.7.9/bin/python"
    if "pypi_wheel_repository" == rule:
      pypi_wheel_repository(**dep)
    elif "pypi_universal_repository" == rule:
      pypi_universal_repository(**dep)
    else:
      fail("Unknown loading rule %s for %s" % (rule, dep))

def py_proto_compile(langs = [str(Label("//python"))], **kwargs):
  proto_compile(langs = langs, **kwargs)
