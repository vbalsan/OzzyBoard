#!/bin/bash

BR2_EXTERNAL=../br2_external/

cd ../Buildroot_BSP/buildroot/
make ozzyboard_defconfig
make clean 
make
