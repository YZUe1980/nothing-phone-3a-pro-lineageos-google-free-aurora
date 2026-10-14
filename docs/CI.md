# GitHub Actions

The `Validate project` workflow runs on pushes to `main`, pull requests and manual dispatch. It checks Bash syntax, tracked files, pinned source revisions, whitespace and both build-wrapper dry runs. It does not download Android sources, flash hardware or claim that the ROM boots.

It uses a standard GitHub-hosted `ubuntu-24.04` runner, a checkout action pinned to an immutable commit, a read-only token and a five-minute job limit. It uploads no artifacts and creates no Actions caches.

GitHub's [current billing documentation](https://docs.github.com/en/billing/concepts/product-billing/github-actions) lists standard GitHub-hosted runners as free for public repositories. Larger runners are billed even for public projects; artifact and cache storage have separate allowances. Our workflow uses the standard runner and no artifact/cache storage features.

The full Android build currently runs on the development machine. Moving that build to Actions would require a runner with suitable memory and storage, or deliberate integration of a dedicated self-hosted build machine. This workflow does not install or register a self-hosted runner.
