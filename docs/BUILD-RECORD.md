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

The original ROM build completed successfully on 2026-10-14 after 170,777 steps (reported build duration 03:16:56); the builder exited with status 0. All emitted artifact checksums passed. Hardware validation remains in progress.

| Built artifact | SHA-256 |
| --- | --- |
| `lineage-23.2-20261014-UNOFFICIAL-asteroids.zip` | `7915bbdd59b31bfcbafd1892b561232b1af8b5d5a3027e375f560429520a890e` |
| `boot.img` | `9f8e57cd94cd2dd2471286762616bcfd80b2d7c35dde60ff8f1f1e02c63a1736` |
| `init_boot.img`, before Magisk | `572a2634d2f8b2eaeaae2fc7d08d13d73f9c68c80c243ea802a52cab68696bf4` |
| `recovery.img` | `995a745e2ab8311e7017f7344733f45d8926497ff078b082c003762131c3db0e` |

The extracted boot kernel identifies itself as `6.6.114-android15-8-4k-g804d18139214`. The target-files contain GmsCore, FakeStore, F-Droid, its privileged extension and Aurora Store. All 22 radio/firmware inputs match the checksum-verified original firmware baseline byte for byte. These findings verify build inputs and outputs, not successful boot or radio operation.
