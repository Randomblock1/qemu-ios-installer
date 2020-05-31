# Maybe this should be #!/usr/bin/env bash ¯\_(ツ)_/¯
#!/bin/bash 

# Move to path running Raspbian from.
cd /var/mobile
# Ensure the Jailbreak and VM have Seperate Paths for Binaries
export PATH=/opt/local/bin:${PATH}
# Make QEMU Directory for QEMU PI
mkdir ./qemu-pi && cd qemu-pi

# Starting the Download Process for Getting and Setting Raspbian VM
echo "getting latest raspbian..."
wget --no-check-certificate https://downloads.raspberrypi.org/raspbian_lite_latest -O raspbian.zip
unzip raspbian.zip && rm raspbian.zip
echo "getting versatile pb...."
wget --no-check-certificate https://raw.githubusercontent.com/dhruvvyas90/qemu-rpi-kernel/master/versatile-pb.dtb
echo "getting qemu kernel... (warning: make sure this is the right kernel for your raspbian, this may not be the latest kernel)"
wget --no-check-certificate https://raw.githubusercontent.com/dhruvvyas90/qemu-rpi-kernel/master/kernel-qemu-4.19.50-buster
echo "creating qcow..."
qemu-img convert -f raw -O qcow2 *.img raspbianlite.qcow
# Increase to 4G to Allow for Functionality After Running the VM
qemu-img resize raspbianlite.qcow +4G
rm *.img
echo "done!"
