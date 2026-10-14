# Third-party components

Apache-2.0 in this repository covers its new build scripts, documentation and original banner. It does not relicense the referenced Android stack.

| Component | Upstream / scope |
| --- | --- |
| Android / LineageOS | [LineageOS](https://github.com/LineageOS); upstream files have their own licenses |
| Device, kernel, modules, hardware | [NullDebris](https://github.com/NullDebris); preserve upstream author notices, device credits and kernel source obligations |
| Vendor hardware files | Device-specific vendor repository referenced in the manifest; proprietary components retain their owners' terms |
| Build container | [lineageos4microg/docker-lineage-cicd](https://github.com/lineageos4microg/docker-lineage-cicd); used by immutable image digest |
| microG packages | [lineageos4microg/android_vendor_partner_gms](https://github.com/lineageos4microg/android_vendor_partner_gms) and [microG](https://microg.org/) |
| Aurora Store | [Source](https://gitlab.com/AuroraOSS/AuroraStore), GPL-3.0-or-later; [F-Droid package and corresponding source](https://f-droid.org/packages/com.aurora.store/) |
| F-Droid | [F-Droid](https://f-droid.org/); upstream client and extension licenses apply |
| Optional Magisk | [topjohnwu/Magisk](https://github.com/topjohnwu/Magisk); retain its upstream license |
| Original-firmware backup reference | [spike0en/nothing_archive](https://github.com/spike0en/nothing_archive); no firmware is included here |

This initial repository distributes recipes, source references and documentation, not ROM binaries, APKs or firmware backups. Any later binary release needs its corresponding source, notices and component-specific distribution requirements documented alongside that release. Retain authorship and license notices when modifying upstream code.
