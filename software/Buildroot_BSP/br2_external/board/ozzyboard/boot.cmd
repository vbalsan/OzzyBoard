setenv bootargs console=ttyS0,115200 panic=5 console=tty0 video=mxcfb0:dev=lcd,800x440,if=RGB666 rootwait root=/dev/mmcblk0p2 earlyprintk rw
load mmc 0:1 0x41000000 zImage
load mmc 0:1 0x41800000 Ozzyboard_kernel.dtb
bootz 0x41000000 - 0x41800000
