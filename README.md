# Dell XPS 13 2015 Developer Edition
Configuration files and scripts for running debian based linux systems on the dell xps 13 2015.
All configuration is applied to ubuntu GNOME.

### HIDPI
HIDPI scaling works out of the box in gnome shell.
Scale text for better readability:
* gsettings set org.gnome.desktop.interface text-scaling-factor 1.2

### Touch Screen

* I found Gnome Shell supporting touch screen devices best

### Touch Pad
* install setting utility: apt-get install gpointing-device-settings
* enable palm detection using gpointing-device-settings reduces cursor jumping while typing
* Freezes are resolved by blacklisting psmouse driver:
  * https://github.com/mpalourdio/xps13/blob/master/A04_01/psmouse-blacklist.conf

### Energy Saving

* Install TLP: sudo apt-get install tlp tlp-rdw
* Install powertop for monitoring accu usage: sudo apt-get install powertop
* make powertop recommendations permanent:
  Add these lines to /etc/rc.local just before the exit 0 command:
  echo '1500' > '/proc/sys/vm/dirty_writeback_centisecs'
  echo 'auto' > '/sys/bus/usb/devices/1-4/power/control'

### Bluetooth

* Works only after extracting firmware from Windows driver [4]:
$ cabextract 20662520_6c535fbfa9dca0d07ab069e8918896086e2af0a7.cab
$ hex2hcd BCM20702A1_001.002.014.1443.1572.hex
# mv BCM20702A1_001.002.014.1443.1572.hcd /lib/firmware/brcm/BCM20702A1-0a5c-216f.hcd
# ln -rs /lib/firmware/brcm/BCM20702A1-0a5c-216f.hcd /lib/firmware/brcm/BCM20702A0-0a5c-216f.hcd

##### Open Issues

* Bluetooth binding to Samsung S5 mini not working. Device shows up, but no PIN dialog appears. After failing to connect the first time, additional tries do not show up device any more.

### Web Sources

* 1.) Dell Driver Package http://downloads.dell.com/FOLDER03178113M/1/XPS13_A08.fish.tar.gz
* 2.) https://github.com/mpalourdio/xps13
* 3.) http://hgdev.co/installing-ubuntu-15-04-on-the-dell-xps-13-9343-2015-a-complete-guide-update/
* 4.) https://wiki.archlinux.org/index.php/Dell_XPS_13_(2015)
