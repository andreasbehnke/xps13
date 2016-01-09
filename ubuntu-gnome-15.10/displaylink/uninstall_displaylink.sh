# uninstall patched displaylink driver and service
mkdir tmp
cd tmp
wget -O DisplayLink_Ubuntu_1.0.335.zip http://www.displaylink.com/downloads/file?id=123
unzip DisplayLink_Ubuntu_1.0.335.zip
chmod +x displaylink-driver-1.0.335.run
sudo ./displaylink-driver-1.0.335.run uninstall
cd ..
rm -R tmp
