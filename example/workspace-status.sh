#!/usr/bin/env bash

set -e

main() {
    # "stable" keys
    echo "STABLE_GIT_VERSION v1.2.3"
    echo "STABLE_GIT_BRANCH develop"

    # "volatile" keys
    echo "ISO8601_DATE $(date -u +"%Y-%m-%dT%H:%M:%SZ")"
}

main "$@"
