# OPlus Launcher 33 Magisk Module

## DISCLAIMER
- OPlus apps and blobs are owned by OPlus™.
- The MIT license specified here is for the Magisk Module only, not for OPlus apps and blobs.

## Descriptions
- Home launcher app by OnePlus Ltd. ported and integrated as a Magisk Module for all supported and rooted devices with Magisk

## Sources
- https://apkmirror.com com.android.launcher (target SDK 33), com.oplus.athena, & com.oplus.uxdesign by OnePlus Ltd.
- libmagiskpolicy.so: Kitsune Mask R6687BB53

## Screenshots
- https://t.me/androidryukimods/2420

## Requirements
- NOT in OPlus ROM
- Android 11 and up
- Magisk or KernelSU installed
- OPlus Core Magisk Module v0.2 or above installed https://github.com/reiryuki/OPlus-Core-Magisk-Module
- Recents provider requires Android 13 and up
- Gesture navigation requires android.permission.INJECT_EVENTS. The permission can only be granted in AOSP signatured ROM or disabled Android Signature Verification in Android 13 and bellow.

## Installation Guide & Download Link
- Install OPlus Core Magisk Module v0.2 or above first: https://github.com/reiryuki/OPlus-Core-Magisk-Module
- If you want to activate the recents provider, READ Optionals bellow!
- Install this module https://www.pling.com/p/2181584/ via Magisk app or KernelSU app or Recovery if Magisk installed
- If you are using KernelSU, you need to disable Unmount Modules by Default in KernelSU app settings
- Reboot
- If you are using KernelSU, you need to allow superuser list manually all package name listed in package.txt (and your home launcher app also) (enable show system apps) and reboot afterwards
- Change your default home to this launcher via Settings app (or you can copy the content of default.sh and paste it to Terminal/Termux app. Type su and grant root first!)

## Optionals
- Global: https://t.me/androidryukimodsdiscussions/60861

## Troubleshootings
- Global: https://t.me/androidryukimodsdiscussions/29836

## Known Issues
- There is a space at the bottom in device that uses hardware navigation bar
- The animation when opening an app looks a bit strange
- Icons option doesn't work
- Split screen doesn't work and no freeform window option in the recents provider if it's activated

## Support & Bug Report
- https://t.me/androidryukimodsdiscussions/2618
- If you don't do above, issues will be closed immediately

## Credits and Contributors
- https://t.me/androidryukimodsdiscussions
- You can contribute ideas about this Magisk Module here: https://t.me/androidappsportdevelopment

## Sponsors
- https://t.me/androidryukimodsdiscussions/2619


