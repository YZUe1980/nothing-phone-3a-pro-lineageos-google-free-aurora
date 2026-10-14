#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0
set -euo pipefail
# The upstream builder downloads this optional patch at runtime. Fail closed if
# its content differs from the first recorded build, even when source SHAs match.
if [[ ${APPLY_PI_PATCH:-false} == true ]]; then
    printf '%s  %s\n' \
        090b9b5a64a78bb2fe2c8f020eda3926f86d473b0d436c4ea6c91f6486dd9bb3 \
        system/core/0001-Pass-SafetyNet.patch | sha256sum --check --status
fi
