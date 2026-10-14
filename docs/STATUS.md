# Development status

Initial status: **2026-10-14**. This page is updated at meaningful milestones, not for every build percentage.

| Item | Evidence / state |
| --- | --- |
| Target hardware | Nothing Phone (3a) Pro A059P, EEA test device |
| Source baseline | LineageOS 23.2 + NullDebris kernel 6.6 trees |
| Source snapshot | 1,174 project revisions exported and pinned |
| Original-firmware preparation | All 38 extracted original images passed their published SHA-256 checks locally |
| First ROM compilation | In progress |
| Wrapper checks | Bash syntax, pinned/tracking dry runs and tracked-file/manifest checks passed; full fresh build not yet tested |
| GitHub Actions | [First hosted validation passed](https://github.com/YZUe1980/nothing-phone-3a-pro-lineageos-google-free-aurora/actions/runs/38529313542); standard Ubuntu runner |
| Clean installation | Not yet tested |
| First boot and encryption | Not yet tested |
| Calls, SMS, mobile data / IMS | Not yet tested |
| Wi-Fi, Bluetooth, GPS | Not yet tested |
| Cameras, fingerprint, audio, Glyph | Not yet tested |
| microG self-check / Aurora / F-Droid | Included in configuration; device tests pending |
| Optional Magisk root | Prepared; not yet installed on this ROM |
| Network-default adjustments | Planned; not yet applied |
| Tested public ROM release | None |

The device trees also cover the Phone (3a), but this project has not validated that model. Compilation success, upstream reports and hardware testing are recorded separately.
