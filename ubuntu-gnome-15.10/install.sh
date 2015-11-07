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
sudo cp powersave.sh /usr/local/bin
sudo cp 10-powersave.rules /etc/udev/rules.d

# fixes for usb3 dell d3100 port replicator
# disable intel powerclamp
sudo apt-get remove thermald
