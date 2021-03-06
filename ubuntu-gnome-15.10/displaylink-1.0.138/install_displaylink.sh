# install preconditions
sudo apt-get install -y dkms

# install patched displaylink driver and service
mkdir tmp
cd tmp
wget http://downloads.displaylink.com/publicsoftware/DisplayLink-Ubuntu-1.0.138.zip
unzip DisplayLink-Ubuntu-1.0.138.zip
chmod +x displaylink-driver-1.0.138.run
./displaylink-driver-1.0.138.run --noexec --keep
cp ../displaylink-installer.sh.patched displaylink-driver-1.0.138/
cd displaylink-driver-1.0.138
sudo ./displaylink-installer.sh.patched install
cd ../..
rm -R tmp

# install powersaving script, turn off displaylink service on power disconnect
sudo cp displaylink-powersave.sh /usr/local/bin
sudo cp 80-displaylink-powersave.rules /etc/udev/rules.d
