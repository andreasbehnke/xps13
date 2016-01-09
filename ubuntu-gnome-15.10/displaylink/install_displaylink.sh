# install preconditions
sudo apt-get install -y dkms

# install displaylink driver and service, since version 1.0.335 no patch is required any more
mkdir tmp
cd tmp
wget -O DisplayLink_Ubuntu_1.0.335.zip http://www.displaylink.com/downloads/file?id=123
unzip DisplayLink_Ubuntu_1.0.335.zip
chmod +x displaylink-driver-1.0.335.run
sudo ./displaylink-driver-1.0.335.run
cd ..
rm -R tmp
