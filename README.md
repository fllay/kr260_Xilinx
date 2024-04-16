# kr260_Xilinx

#Create accellerated computing

Step 1 : Create hardware platform

1.1 Getting Started with the Kria KR260 (Custom HW)
https://www.hackster.io/whitney-knitter/getting-started-with-the-kria-kr260-in-vivado-2022-1-33746d
1.2 Add Peripheral Support to Kria KR260 
https://www.hackster.io/whitney-knitter/add-peripheral-support-to-kria-kr260-vivado-2022-1-project-874960

Output :

xsa platform file

Step 2 : Create Petalinux image


https://www.hackster.io/whitney-knitter/getting-started-with-the-kria-kr260-in-petalinux-2022-1-daec16

```
petalinux-create --type project -s xilinx-kr260-starterkit-v2023.1-05080224.bsp --name linux_os
cd linux_os/
petalinux-config --get-hw-description ../../hardware/kr260_platform_20231
petalinux-config -c rootfs
petalinux-build 

```


