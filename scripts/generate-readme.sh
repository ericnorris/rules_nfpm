#!/usr/bin/env bash

main() {
    if [[ -z $BUILD_WORKSPACE_DIRECTORY ]]; then
        echo "ERROR: \$BUILD_WORKSPACE_DIRECTORY is not set, are you running this with Bazel?" >&2
        exit 1
    fi

    cat "$@" > "$BUILD_WORKSPACE_DIRECTORY/README.md"
}

main "$@"
