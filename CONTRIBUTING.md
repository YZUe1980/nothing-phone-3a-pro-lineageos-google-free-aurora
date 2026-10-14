# Contributing

Start with a GitHub issue describing the change or reproducible problem. Include the exact device model, build date, source revision, expected behavior and observed behavior. Mark checks that were not performed instead of inferring success from a boot or a screenshot.

For build-recipe changes, run:

```bash
for file in scripts/*.sh userscripts/*.sh; do bash -n "$file"; done
./scripts/build.sh --dry-run
SOURCE_MODE=tracking ./scripts/build.sh --dry-run
python3 scripts/check-publication.py
```

The publication check examines Git-tracked files; stage intended additions before running it. It checks manifests and common accidental inclusions, not every possible kind of secret. Review the staged diff yourself, especially when sharing logs. Do not include signing keys, authentication files, phone serials, personal data, generated Android source trees or downloaded binaries.

Use your own local keys for experiments. Treat the current `userdebug` build as development work. Changes to firmware, partition layouts, AVB or initial flashing need review against the exact device trees and real device results.

Contributions to this repository's original scripts and documentation are provided under Apache-2.0. Changes to upstream components keep their existing licenses and should be linked to the corresponding upstream source or patch.
