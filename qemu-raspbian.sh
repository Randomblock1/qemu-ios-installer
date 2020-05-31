
# Maybe this should be #!/usr/bin/env bash ¯\_(ツ)_/¯
#!/bin/bash 

# Move to qemu-pi created dir
cd /var/mobile/qemu-pi
qemu-system-arm -kernel ./kernel-* -append "root=/dev/sda2 rootfstype=ext4 rw" -hda ./raspbianlite.qcow -cpu arm1176 -m 256 -M versatilepb -no-reboot -serial stdio -dtb versatile-pb.dtb --accel tcg,thread=multi -net nic -net user,hostfwd=tcp::5555-:22
