echo QEMU Installer for iOS by Randomblock1
echo THIS SCRIPT MUST BE RUN AS ROOT OR IT WON’T WORK
echo You will need screen, git, and python3 to run this script, installing now... (getting from elcubatrus repo)
apt install screen git python3
cd /var/mobile
git clone --branch testing https://github.com/MCApollo/MCApollo.github.io
cd MCApollo.github.io/Public/
screen -dmS pyserver python3 -m http.server 8000
cd /etc/apt/sources.list.d/
touch qemu.list
echo deb http://127.0.0.1:8000/ ./ > qemu.list
apt update
apt install io.mc.qemu -y --allow-unauthenticated
echo YAY! Script finished. Go ahead and use QEMU!
screen -XS pyserver quit
exit