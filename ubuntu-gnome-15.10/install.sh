# tweak tool
sudo apt-get -y install gnome-tweak-tool 

# wifi driver
sudo apt-get -y install bcmwl-kernel-source

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

# install patched displaylink driver and service
unzip dl_installer_debian_v1-1.zip 
cp displaylink-installer.sh displaylink-driver-1.0.68/
cd displaylink-driver-1.0.68
sudo ./displaylink-installer.sh
cd ..
