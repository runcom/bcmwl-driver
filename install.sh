#/bin/sh
# handle case where wireless folder isn't in k source see README
make && sudo make install && sudo depmod && sudo modprobe wl && make clean
