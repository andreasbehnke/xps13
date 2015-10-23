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
