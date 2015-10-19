# This script is not in the condition to be run without modification!

# first of all fix ubuntu
wget https://raw.githubusercontent.com/shakaran/scripts/master/fix-ubuntu-privacy.sh
chmod +x fix-ubuntu-privacy.sh
./fix-ubuntu-privacy.sh

# download dell fixes and install fix for touch pad and bluetooth firmware
wget http://downloads.dell.com/FOLDER03178113M/1/XPS13_A08.fish.tar.gz
tar -zxvf XPS13_A08.fish.tar.gz
sudo dpkg --install debs/workaround-set-acpi-osi_1.3_all.deb
sudo dpkg --install debs/bt-dw1560-firmware_1.0_all.deb

#TODO: http://netbook-remix.archive.canonical.com/updates/pool/public/s/synaptic-i2c-hid-3.13.0-32-backport-dkms/

#TODO: Extract bluetooth firmware from windows driver

#TODO: http://en.community.dell.com/techcenter/extras/m/mediagallery/20441258/download

# blacklist psmouse driver
wget https://raw.githubusercontent.com/mpalourdio/xps13/master/A04_01/psmouse-blacklist.conf
sudo mv psmouse-blacklist.conf /etc/modprobe.d/
sudo depmod -ae
sudo update-initramfs -u

#TODO Add this to the end: 
#TODO # blacklist mei modules because they're not needed and can cause #TODO kernel panics 
#TODO blacklist mei 
#TODO blacklist mei_me 
#TODO Next do this, then reboot: 
#TODO sudo update-initramfs -u

#TODO blacklist elan touch screen usb device:
#/etc/udev/rules.d/10-elan-touchscreen.rules:
# Disable touchscreen completely because xinput does not handle events correctly
#SUBSYSTEM=="usb", ATTRS{idVendor}=="04f3", ATTRS{idProduct}=="20d0", ATTR{authorized}="0"

# repository for power saving management
sudo add-apt-repository -y ppa:linrunner/tlp

# repository with patch for bcmwl wifi driver
sudo apt-add-repository -y ppa:inaddy/lp1415880

sudo apt-get update
sudo apt-get -y upgrade

# install wifi driver
# install power saving tools
# install chromium-browser
sudo apt-get -y install bcmwl-kernel-source powertop tlp tlp-rdw chromium-browser

# scale display
#xrandr --output eDP1 --scale 1x1
#gsettings set org.gnome.desktop.interface scaling-factor 2
#gsettings set org.gnome.desktop.interface text-scaling-factor 1

# reboot
sudo reboot
