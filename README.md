# Dell XPS 13 2015 Developer Edition
Configuration files and scripts for running debian based linux systems on the dell xps 13 2015

### HIDPI

### Touch Screen

* I found Gnome Shell supporting touch screen devices best
* This takes me to the decision to use ubuntu gnome

### Touch Pad
* install setting utility: apt-get install gpointing-device-settings
* enable palm detection using gpointing-device-settings reduces cursor jumping while typing

### Energy Saving

* Install TLP: sudo apt-get install tlp tlp-rdw
* Install powertop for monitoring accu usage: sudo apt-get install powertop
* powertop settings in accu mode: 
  * echo '1500' > '/proc/sys/vm/dirty_writeback_centisecs';
  * echo 'auto' > '/sys/bus/usb/devices/1-4/power/control';
* Kernel NMI interrupts:
  * sudo sh -c "echo 'kernel.nmi_watchdog = 0' > /etc/sysctl.d/disable_watchdog.conf"

### Bluetooth

* install bt-dw1560-firmware_1.0_all.deb provided by dell [1 Dell Driver Package]

##### Open Issues

* Bluetooth binding to Samsung S5 mini not working. Device shows up, but no PIN dialog appears. After failing to connect the first time, additional tries do not show up device any more.

### Web Sources

1.) Dell Driver Package http://downloads.dell.com/FOLDER03178113M/1/XPS13_A08.fish.tar.gz
