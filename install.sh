#/bin/sh
if [ "$(id -u)" != "0" ]; then
	echo "You should run this script as root"
	exit
fi
wdir="/lib/modules/$(uname -r)/kernel/drivers/net/wireless"
if [ ! -d $wdir ]; then
	echo "creating wireless dir in ksource"
	sudo mkdir -p $wdir
fi
make && sudo make install && sudo depmod && sudo modprobe wl && make clean
