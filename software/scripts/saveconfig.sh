#!/bin/bash

BR2_EXTERNAL=../br2_external/

cd ../Buildroot_BSP/buildroot/
make savedefconfig BR2_DEFCONFIG=$BR2_EXTERNAL/configs/ozzyboard_defconfig
make uboot-update-defconfig
make linux-update-defconfig
make busybox-update-config


