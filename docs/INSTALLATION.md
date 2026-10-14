# Installation validation

**No tested installation procedure or ROM release is available yet.** This page records the pending work rather than providing an unverified flash script.

The development device starts on Nothing OS `B4.1-260810-1153` with kernel 6.1; our target uses kernel 6.6. The [device maintainer](https://github.com/NullDebris) identifies a complete matching set of initial images, including kernel-module partitions, or an appropriate kernel-6.1 recovery as the relevant transition paths. Copying a generic recovery-only command is insufficient evidence for this device.

Before recording a tested procedure, we will inspect the actual target-files, boot and recovery images, kernel modules, OTA metadata, partition list and fastboot requirements. A full image package generated from the completed target-files is another path under consideration. Factory reset and installation require an unlocked bootloader and erase personal data; the development phone's original images are kept and checksum-verified locally.

Root is a separate step after the unmodified ROM boots. Following [Magisk's installation documentation](https://topjohnwu.github.io/Magisk/install.html), the exact ROM's `init_boot.img` is patched on the same phone and installed to its verified current slot. We do not distribute another user's patched image. Bootloader relocking is not part of this development procedure.

Results, artifact hashes and the confirmed sequence will be added after device validation. Banking, DRM and Play Integrity compatibility have not been established.
