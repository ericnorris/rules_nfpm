load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")
load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

def rules_nfpm_internal_setup():
    _buildifier_setup()
    _skylib_setup()

def _buildifier_setup():
    protobuf_deps()

def _skylib_setup():
    bazel_skylib_workspace()
