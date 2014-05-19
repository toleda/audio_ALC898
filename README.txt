
audio_ALC898
============
OS X Realtek ALC898 Onboard Audio

This guide enables OS X Realtek ALC898 onboard audio on Intel based motherboards with a bootable clean install of OS X. The Realtek AppleHDA.kext only works with the codec the kext was edited for and patches the native AppleHDA.kext.
____________________________________________________________Download ZIP >  > 

Note: cloverALC, see https://github.com/toleda/audio_cloverALC

Requirements
1. Native S/L/E/AppleHDA.kext (restore native AppleHDA.kext with Combo Update)
2a. alc898-93 - Mavericks 10.9.3/AppleHDA.kext_v2.6.1
2b. alc898-92 - Mavericks 10.9.2/AppleHDA.kext_v2.6.0
2c. alc898-91 - Mavericks 10.9.1/AppleHDA.kext_v2.5.3
2d. alc898-90 - Mavericks 10.9/AppleHDA.kext_v2.5.2
2e. alc898-85 - Mountain Lion 10.8.5/AppleHDA.kext_v2.4.7
2f. alc898-84 - Mountain Lion 10.8 - 10.8.4/AppleHDA.kext_v2.3.7

Realtek ALC AppleHDA Guides https://github.com/toleda/audio_ALCInjection
1. M-Realtek ALC AppleHDA Capabilities.pdf
2. M-Realtek ALC AppleHDA Customization.pdf
3. M-Realtek ALC AppleHDA No Audio.pdf
4. M-Realtek ALC AppleHDA Screenshots.pdf

Three Realtek ALC898 AppleHDA.kext Audio_IDs, select one
1. Audio_ID: 1 supports 5 and 6 port ALC8xx onboard and/or AMD/Nvidia HDMI audio  
2, Audio_ID: 2 supports 3 port ALC8xx onboard and/or AMD/Nvidia HDMI audio
3. Audio_ID: 3 supports 3, 5 and 6 port ALC8xx onboard HD4K/HD3K HDMI audio
	with or without AMD/Nvidia HDMI audio
4. Audio_IDs: 1 and 2 support analog 5.1 surround sound, 3 does not
5. Audio_IDs: 1, 2 and 3 require HDMI audio dsdt edits for HDMI audio 

Techniques to enable the Realtek ALC AppleHDA.kext, select one
1. HDEF/kext/No dsdt/audio enabler = Audio_ID, see [Guide] Add HDEF-kext.pdf
https://github.com/toleda/audio_kext_enabler
1a. Audio_ID = 1/HDAEnabler1.kext.zip 
1b. Audio_ID = 2/HDAEnabler2.kext.zip
1c. Audio_ID = 3/NA
2. HDEF/dsdt/layout-id = Audio_ID, see [Guide] Add or Edit HDEF-dsdt.pdf
https://github.com/toleda/audio_ALCInjection
2a. Audio_ID = 1/layout-id: 0x01, 0x00, 0x00, 0x00, 0x00
2b. Audio_ID = 2/layout-id: 0x02, 0x00, 0x00, 0x00, 0x00
2c. Audio_ID = 3, see dsdt/HD3K/HD4K HDMI audio
3. HDEF/lssdt/ayout-id = Audio_ID, see [Guide] Add HDEF-ssdt.pdf
https://github.com/toleda/audio_ssdt_enabler
3a. Audio_ID = 1/audio_ssdt-hdae-1.zip
3b. Audio_ID = 2/audio_ssdt-hdae-2.zip
3c. Audio_ID = 3, see ssdt/HD3K/HD4K HDMI audio
4. HDEF/Clover/Config.plist/Devices, see [Guide] Add HDEF-Clover.pdf
https://github.com/toleda/audio_ALCInjection
4a. Audio_ID = 1/Audio/Inject=1
4b. Audio_ID = 2/Audio/Inject=2
4c. Audio_ID = 3/Audio/Inject=3
5. Chameleon/Chameleon Installer/Customize/Settings
5a. Audio_ID = 1/HDEF Layout=1
5b. Audio_ID = 2/HDEF Layout=2

Download
1. https://github.com/toleda/audio_ALC898
2. Select: Download ZIP (above and right)

Installation/Shell Script/.command (Do not move folder or files)
1. Downloads/audio_ALC898-master/
1a. for 10.9.3/audio_alc898-93_patch.command
1b. for 10.9.2/audio_alc898-92_patch.command
1c. for 10.9.1/audio_alc898-91_patch.command
1d. for 10.9/audio_alc898-90_patch.command
1e. for 10.8.5 and newer/audio_alc898-85_patch.command
1f. for 10.8.4 and older/audio_alc898-84_patch.command
2. Launch (double click: audio_alc898-ver_patch.command)
3. Enter password at prompt
4. Save Log: Terminal/Shell/Export Text As../Terminal Saved Output/Desktop/audio_ALC898
5. Restart

Problem Reporting
1. Motherboard/BIOS version/processor/graphics/OS and version
2. Copy of dsdt (if edited)
3. Copy of IORegistryExplorer

Troubleshooting/Post w/attachments 2 and 3, above
1. Mavericks/10.9
1a. http://www.tonymacx86.com/audio/112461-mavericks-no-audio-realtek-alc-applehda.html
1b. http://www.insanelymac.com/forum/topic/292999-mavericks-applehda-hdmi-audio/
2. Mountain Lion/10.8
2a.http://www.tonymacx86.com/audio/76309-mountain-lion-multibeast-no-audio-solutions-problem-reporting.html
2b. http://www.insanelymac.com/forum/topic/290797-mountain-lion-realtek-alc-applehda-audio/

Credit
THe KiNG 
VHC888
.:ErmaC:.
bcc9
RevoGirl rip

toleda
https://github.com/toleda/audio_ALC898
audio_alc898-93_patch.command
audio_alc898-92_patch.command
audio_alc898-91_patch.command
audio_alc898-90_patch.command
audio_alc898-85_patch.command
audio_alc898-84_patch.command
README.txt
Files:
898.zip

Details - audio_ALC898-ver_patch script  (see Requirements)

1. Verify: 
1a. native S/L/E/AppleHDA.kext_ver
1b. Downloads/audio_ALC898-master

2. Rename or Delete (if present)
2a. Desktop/audio-ALC898 to Desktop/audio-ALC898-archive

3. Run script
3a. Downloads/audio_ALC898-master/audio_alc898-ver_patch.command
3b. Lunch (double click)
3c. Enter Password when requested

4. Example: Terminal/audio_alc898-90_patch window
_____________________________

...$ .../Downloads/audio_ALC898-master/audio_alc898-90_patch.command ; exit;
Prepare Desktop/audio_ALC898 ... 
Install files ...
Password:
Patch binary ...
Fix permissions ...
Kernel cache...
Finished, restart required.
logout

[Process completed]
___________________________

5. If output is the same, success.  
5a. Terminal/Shell/Export Text As../Terminal Saved Output/Desktop/audio_ALC898
5b. Restart

6. If errors or a different output;
6a. Install Desktop/audio_ALC898/AppleHDA-orig.kext to S/L/E/AppleHDA.kext
6b. Go to Step 1.

7. If boot problem caused by AppleHDA, Boot/Single User Mode/Terminal
sudo rm -R /System/Library/Extensions/AppleHDA.kext