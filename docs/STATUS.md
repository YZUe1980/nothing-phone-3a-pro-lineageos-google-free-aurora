# Development status

Initial status: **2026-10-14**. This page is updated at meaningful milestones, not for every build percentage.

| Item | Evidence / state |
| --- | --- |
| Target hardware | Nothing Phone (3a) Pro A059P, EEA test device |
| Source baseline | LineageOS 23.2 + NullDebris kernel 6.6 trees |
| Source snapshot | 1,174 project revisions exported and pinned |
| Original-firmware preparation | All 38 extracted original images passed their published SHA-256 checks locally |
| First ROM compilation | Completed successfully: 170,777 build steps, container exit 0; output checksums verified |
| Wrapper checks | Bash syntax, pinned/tracking dry runs and tracked-file/manifest checks passed; full fresh build not yet tested |
| GitHub Actions | [First hosted validation passed](https://github.com/YZUe1980/nothing-phone-3a-pro-lineageos-google-free-aurora/actions/runs/38529313542); standard Ubuntu runner |
| Clean installation | Full super image and eight slot-A boot-chain images written; data/metadata formatted. First boot under observation |
| First boot and encryption | Not yet tested |
| Calls, SMS, mobile data / IMS | Not yet tested |
| Wi-Fi, Bluetooth, GPS | Not yet tested |
| Cameras, fingerprint, audio, Glyph | Not yet tested |
| microG self-check / Aurora / F-Droid | Included in configuration; device tests pending |
| Optional Magisk root | Prepared; not yet installed on this ROM |
| Network-default adjustments | Planned; not yet applied |
| Tested public ROM release | None |

The device trees also cover the Phone (3a), but this project has not validated that model. Compilation success, upstream reports and hardware testing are recorded separately.

Two installation issues were observed on the A059P: the initial fastboot package's baseband requirement differs from the stock device's version string despite all 22 bundled radio/firmware files being byte-identical, and recovery fastbootd reports a locked state while the hardware bootloader remains unlocked. The current installation attempt uses a full super image directly through the hardware bootloader, with matching slot-A start images. Generic `fastboot update` is not a verified installation method for this build.
