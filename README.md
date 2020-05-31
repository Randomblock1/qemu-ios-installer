# qemu-ios-installer
Installer scripts to install qemu, download OSes, and more (in development)

## QEMU IOS Installer Script Purposes

### getraspbian
gets raspbian image and kernel to emulate with qemu

### qemuinstaller
installs QEMU from the testing MCApollo repo

### qemu-raspbian
runs QEMU with the raspbian image (will be replaced by another script eventually)

### General Information
1. Be sure to run `cd ./qemu-ios-installer && chmod +x ./*.sh && cd - > /dev/null` before running any of the scripts.
2. Order of Operations
   1. `cd ./qemu-ios-installer && chmod +x ./*.sh && cd - > /dev/null`
   2. `./qemu-ios-installer/getraspbian.sh` while in `/var/mobile`
   3. `./qemu-ios-installer/qemuinstaller.sh` while in `/var/mobile`
   4. `./qemu-ios-installer/qemu-raspbian.sh` while in `/var/mobile`
