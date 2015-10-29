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

# power management
sudo apt-get -y install powertop tlp tlp-rdw

# fixes for usb3 dell d3100 port replicator
# disable intel powerclamp
sudo rmmod intel_powerclamp 
sudo echo install intel_powerclamp /bin/true > intel_powerclamp.conf
sudo apt-get remove thermald
