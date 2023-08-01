#!/bin/bash

BR2_EXTERNAL=../Buildroot_BSP/br2_external/
make savedefconfig BR2_DEFCONFIG=$BR2_EXTERNAL/configs/ozzyboard_defconfig
make uboot-savedefconfig 
make linux-savedefconfig


