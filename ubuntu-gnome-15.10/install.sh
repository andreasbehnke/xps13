# tweak tool
sudo apt-get -y install gnome-tweak-tool 

# wifi driver
# replaced broadcom card with intel wifi card, no extra driver required
#sudo apt-get -y install bcmwl-kernel-source

# blacklist psmouse driver
wget https://raw.githubusercontent.com/mpalourdio/xps13/master/A04_01/psmouse-blacklist.conf
sudo mv psmouse-blacklist.conf /etc/modprobe.d/
sudo depmod -ae
sudo update-initramfs -u

# install google chrome
sudo apt-get -y install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
rm google-chrome*.deb

# power management
sudo apt-get -y install powertop tlp tlp-rdw
# >> echo 'auto' > '/sys/bus/usb/devices/1-4/power/control';

# fixes for usb3 dell d3100 port replicator
# disable intel powerclamp
sudo apt-get remove thermald
