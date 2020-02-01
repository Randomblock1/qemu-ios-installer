export PATH=/opt/local/bin:${PATH}
mkdir ~/qemu-pi && cd qemu-pi
echo getting latest raspbian...
wget https://downloads.raspberrypi.org/raspbian_lite_latest -O raspbian.zip
unzip raspbian.zip && rm raspbian.zip
echo getting versatile pb....
wget https://raw.githubusercontent.com/dhruvvyas90/qemu-rpi-kernel/master/versatile-pb.dtb
echo getting qemu kernel... (warning: make sure this is the right kernel for your raspbian, this may not be the latest kernel)
wget https://raw.githubusercontent.com/dhruvvyas90/qemu-rpi-kernel/master/kernel-qemu-4.19.50-buster
echo creating qcow...
qemu-img convert -f raw -O qcow2 *.img raspbianlite.qcow
qemu-img resize raspbianlite.qcow +2G
rm *.img
echo done!