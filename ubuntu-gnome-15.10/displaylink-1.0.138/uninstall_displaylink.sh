# uninstall patched displaylink driver and service
mkdir tmp
cd tmp
wget http://downloads.displaylink.com/publicsoftware/DisplayLink-Ubuntu-1.0.138.zip
unzip DisplayLink-Ubuntu-1.0.138.zip
chmod +x displaylink-driver-1.0.138.run
./displaylink-driver-1.0.138.run --noexec --keep
cp ../displaylink-installer.sh.patched displaylink-driver-1.0.138/
cd displaylink-driver-1.0.138
sudo ./displaylink-installer.sh.patched uninstall
cd ../..
rm -R tmp

# uninstall powersaving script
sudo rm /usr/local/bin/displaylink-powersave.sh
sudo rm  /etc/udev/rules.d/80-displaylink-powersave.rules
