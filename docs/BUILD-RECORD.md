# First development build: 2026-10-14

| Input | Recorded value |
| --- | --- |
| ROM branch | `lineage-23.2` |
| Device | `asteroids`, test hardware A059P |
| Device tree | `9221db48205dcc56d18cbd69f2d6d5c777dd5e73` |
| Kernel tree | `804d18139214e690695ce61908de59e689644778` |
| Vendor tree | `dec51e71456a55af3f5a4d4744c3e2aab726afc4` |
| microG vendor | `f264d80a25989051b01535cc5690ced12ceb31ab` |
| Build type | `userdebug`, `UNOFFICIAL` |
| Aurora Store | 4.8.4, F-Droid version code 76 |
| Aurora APK SHA-256 | `fd9c75d90d0f4a7c132b9b4a5a2cf1992a45e03b8d8ff988b7dcfbc0db2c4d11` |
| Optional runtime patch SHA-256 | `090b9b5a64a78bb2fe2c8f020eda3926f86d473b0d436c4ea6c91f6486dd9bb3` |

The complete project revisions are in `manifests/build-2026-10-14.xml`; the container digest and configuration are in the build guide and `config/build.env.example`.

The existing build resumes an initialized source tree with `CALL_REPO_INIT=false`. A fresh tracking build initializes LineageOS; a fresh pinned build initializes this repository's recorded manifest. These are intentionally different setup steps.

The container modifies the checked-out source during preparation, including signing/package entries and a microG overlay in `vendor/lineage`, version filtering, the optional property-service compatibility patch and a fastboot lock-state adjustment. A manifest alone does not describe those working-tree changes; the fixed builder image and runtime-patch check are part of this recipe.

At initial publication the ROM build and hardware validation are still in progress. ROM artifact hashes and an installation result will be recorded only when the corresponding steps have completed.
