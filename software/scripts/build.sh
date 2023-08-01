#!/bin/bash

BR2_EXTERNAL=../br2_external/

cd ../Buildroot_BSP/Buildroot/
make ozzyboard_defconfig
make clean 
make
