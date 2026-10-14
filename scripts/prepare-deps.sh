#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0
set -euo pipefail

repo_root=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
target="$repo_root/userscripts/aurora/AuroraStore.apk"
expected=fd9c75d90d0f4a7c132b9b4a5a2cf1992a45e03b8d8ff988b7dcfbc0db2c4d11
verify() { printf '%s  %s\n' "$expected" "$1" | sha256sum --check --status; }
if [[ -f "$target" ]] && verify "$target"; then
    printf 'Aurora Store 4.8.4: verified.\n'
    exit 0
fi
mkdir -p "$repo_root/.cache"
download=$(mktemp "$repo_root/.cache/aurora.XXXXXX")
trap 'rm -f -- "$download"' EXIT
curl --fail --location --retry 3 --connect-timeout 30 \
    https://f-droid.org/repo/com.aurora.store_76.apk --output "$download"
verify "$download"
install -m 0644 "$download" "$target"
printf 'Aurora Store 4.8.4: downloaded and verified.\n'
