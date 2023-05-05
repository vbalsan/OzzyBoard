# OzzyBoard
Allwinner V3s prototype SBC

Features : 
- Allwinner V3s SoC 1.2Ghz cortex-A with 64MB ram
- STM32F0, accessible through i2c and UART
- Interface for 0.91" OLED screen
- CH340N for serial through USB
- 40 pin screen interface for Adafruit 7"
- Audio with 3.5mm jack
- 8GB eMMC

Update 23/04/2023 :
- Ethernet port is inverted... 3D model on kicad was not accurate, lesson learned. Will replace with vertical models
- Green external led for LNK is too bright, Vf is equal to 2.7V for a forward current of 1mA and not typical 3V, so current in the end is more like 2mA
- Didn't test screen, need to update BSP with new device tree
- Power consumption is around 80mA, not bad

Update 05/05/2023
- Ethernet port LNK led is not working, mixed up connections, the eth connector has pin 9 as anode and 10 cathode, but on Kicad this was inverted.
- Board booting fine with kernel 6.1
- Made a custom device tree but with sunxi dtsi
- eMMC can be partitioned and formatted, perf test show +/- 40MB/s write or read
- Ethernet works, need to configure /etc/network/interfaces and add it to rootfs overlay though

![alt text](/images/OzzyBoardFinal.png)

Board received : 
![alt text](/images/signal-2023-04-11-115649_002.jpeg)
