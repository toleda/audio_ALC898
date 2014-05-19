#!/bin/sh
# Maintained by: toleda for: github.com/toleda/audio_ALC898
# File: audio_alc898-93_patch,command_v1.0
# Credit: THeKiNG, VCH888, .:ErmaC:., bcc9, RevoGirl, PikeRAlpha, SJ_UnderWater
#
# OS X Realtek ALC898 Onboard Audio
#
# Enables OS X Realtek ALC898 onboard audio in Mountain Lion 10.9 and newer
# 1. Patches native AppleHDA.kext installed in System/Library/Extensions
# 2. Rename Desktop/audio_ALC898 to audio_ALC898-archive (if present)
# 3. Verify Downloads/audio_ALC898-master present
#
# Installation
# 1. Downloads/audio_ALC898-master/audio_alc898-93_patch.command
# 2. Double click audio_alc898-93_patch.command
# 3. Enter password at prompt
#
echo " "
echo "Agreement"
echo "The audio_ALC898_patch is for personal use only. Do not distribute the patch," 
echo "any or all of the enclosed files or the resulting patched AppleHDA.kext for any" 
echo "reason without permission. The audio_ALC898_patch is provided as is and without" 
echo "any kind of warranty."
echo " "
#
echo "Prepare Desktop/audio_ALC898 ..."
cd ~
rm -rf Desktop/audio_ALC898
cp -R Downloads/audio_ALC898-master Desktop/audio_ALC898
cp -R /System/Library/Extensions/AppleHDA.kext Desktop/audio_ALC898/AppleHDA-orig.kext
cd Desktop/audio_ALC898
unzip -q 898.zip
cd 898

echo "Install files ..."
sudo rm -R /System/Library/Extensions/AppleHDA.kext/Contents/Plugins/AppleHDAHardwareConfigDriver.kext/Contents/Info.plist
sudo install -m 644 -o root -g wheel Info-93.plist /System/Library/Extensions/AppleHDA.kext/Contents/Plugins/AppleHDAHardwareConfigDriver.kext/Contents/Info.plist
sudo rm -R /System/Library/Extensions/AppleHDA.kext/Contents/Resources/*.zlib
sudo install -m 644 -o root -g wheel Platforms.xml.zlib layout1.xml.zlib layout2.xml.zlib layout3.xml.zlib  /System/Library/Extensions/AppleHDA.kext/Contents/Resources

echo "Patch binary ..."
sudo perl -pi -e 's|\x8b\x19\xd4\x11|\x99\x08\xec\x10|g' /System/Library/Extensions/AppleHDA.kext/Contents/MacOS/AppleHDA

echo "Fix permissions ..."
sudo chown -R root:wheel /System/Library/Extensions/AppleHDA.kext

echo "Kernel cache..."
sudo touch /System/Library/Extensions

cd ~
rm -R Desktop/audio_ALC898/898
cp -R /System/Library/Extensions/AppleHDA.kext Desktop/audio_ALC898/AppleHDA.kext

echo "Finished, restart required."