

Warning: Try this at your own risk
http://www.tldp.org/LDP/lkmpg/2.6/html/x279.html
https://unix.stackexchange.com/questions/118116/linux-what-is-a-tainted-kernel
http://www.kroah.com/log/blog/2013/09/02/booting-a-self-signed-linux-kernel/

$git clone this_repo
$cd your_module_path

$sudo sh ./build_install_fed_driver.sh 

log:

$ sudo sh ./build_install_fed_driver.sh 
dmesg -c: Clearning all earlier syslogs ...

make: Building ...
make -C /lib/modules/3.13.0-110-generic/build SUBDIRS="." modules M=/home/rick/ATOM/rahuldeo2047_example-linux-drivers/first_example
make[1]: Entering directory `/usr/src/linux-headers-3.13.0-110-generic'
  Building modules, stage 2.
  MODPOST 1 modules
make[1]: Leaving directory `/usr/src/linux-headers-3.13.0-110-generic'

modeinfo: Check kernel particulars ...
filename:       /home/rick/ATOM/rahuldeo2047_example-linux-drivers/first_example/fed.ko
description:    First Example Driver
author:         rahuldeo2047
license:        MIT
srcversion:     44C02BE1C90CBB11091B1AD
depends:        
vermagic:       3.13.0-110-generic SMP mod_unload modversions 

rmmod: Removing the driver ...

insmode: Installing the driver ...

lsmod: check kernel registry ...
Module                  Size  Used by
fed                    12423  0 

syslog: Please wait till final "fed: module registered" msg ... (^C to exit)
Nov 26 20:04:10 multiverse kernel: [13583.759438] fed: module unregistered
Nov 26 20:04:33 multiverse kernel: [13583.767067] fed: module registered<4>[13606.262284] sd 6:0:0:0: [sdb] Test WP failed, assume Write Enabled
Nov 26 20:05:37 multiverse kernel: [13670.896981] fed: module unregistered
Nov 26 20:06:16 multiverse kernel: [13670.904768] fed: module registered<4>[13709.712034] sd 6:0:0:0: [sdb] Test WP failed, assume Write Enabled
^C
