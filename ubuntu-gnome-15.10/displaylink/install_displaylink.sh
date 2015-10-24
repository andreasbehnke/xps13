# install patched displaylink driver and service
./displaylink-driver-1.0.138.run --noexec --keep
cp displaylink-installer.sh displaylink-driver-1.0.138/
cd displaylink-driver-1.0.138
sudo ./displaylink-installer.sh install
cd ..
