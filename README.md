This is just broadcom sta driver source with latest kernel patches (mainly patches applied to original source from bcmwl-ubuntu repo on github) and patches for kernel version 4.0.0 (applied by me). This is just a repo for this driver to make wifi working on my dell m4800 with a custom built vanilla kernel of my choice (not ubuntu one).
Just `make`, `sudo make install`, `sudo depmod`, `sudo modprobe wl` and your wifi is up and running!
(if you don't compile other wifi modules, like I do, you'll also need to `cd /lib/modules/`uname -r`/ && sudo mkdir kernel/drivers/net/wireless`)
