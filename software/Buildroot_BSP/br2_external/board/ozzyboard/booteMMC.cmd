setenv bootargs console=ttyS0,115200 panic=5 console=tty0 rootwait root=/dev/mmcblk1p2 earlyprintk rw
load mmc 1:1 0x41000000 zImage
load mmc 1:1 0x41800000 Ozzyboard_kernel.dtb
bootz 0x41000000 - 0x41800000
