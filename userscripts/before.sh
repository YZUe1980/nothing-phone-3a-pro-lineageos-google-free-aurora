#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0
set -euo pipefail

aurora=/root/userscripts/aurora
printf '%s  %s\n' \
    fd9c75d90d0f4a7c132b9b4a5a2cf1992a45e03b8d8ff988b7dcfbc0db2c4d11 \
    "$aurora/AuroraStore.apk" | sha256sum --check --status
mkdir -p vendor/aurora
cp "$aurora/Android.bp" "$aurora/AuroraStore.apk" vendor/aurora/
