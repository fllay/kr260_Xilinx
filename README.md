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
```
```
pi@piXlinx:~/wsxilinx/kria_vitis_platform/2023.1/software/xilinx-kr260-starterkit-2023.1$ petalinux-build -x mrproper
pi@piXlinx:~/wsxilinx/kria_vitis_platform/2023.1/software/xilinx-kr260-starterkit-2023.1$ petalinux-build 
[INFO] Sourcing buildtools
[INFO] Building project
[INFO] Generating Kconfig for project
[INFO] Silentconfig project
[INFO] Generating kconfig for rootfs
[INFO] Silentconfig rootfs
[INFO] Adding user layers
[INFO] Generating machine conf file
[INFO] Generating plnxtool conf file
[INFO] Generating workspace directory
INFO: bitbake petalinux-image-minimal
NOTE: Started PRServer with DBfile: /home/pi/wsxilinx/kria_vitis_platform/2023.1/software/xilinx-kr260-starterkit-2023.1/build/cache/prserv.sqlite3, Address: 127.0.0.1:43419, PID: 449715
Loading cache: 100% |                                                                                                                                                   | ETA:  --:--:--
Loaded 0 entries from dependency cache.
Parsing recipes: 100% |##################################################################################################################################################| Time: 0:01:08
Parsing of 4344 .bb files complete (0 cached, 4344 parsed). 6275 targets, 292 skipped, 1 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
WARNING: preferred version 2023.1 of xmutil not available (for item xmutil)
WARNING: versions of xmutil available: 1.1
WARNING: preferred version 2023.1 of kria-pwrctl not available (for item kria-pwrctl)
WARNING: versions of kria-pwrctl available: 1.1
WARNING: preferred version 2023.1 of xmutil not available (for item xmutil-dev)
WARNING: versions of xmutil available: 1.1
WARNING: preferred version 2023.1 of kria-pwrctl not available (for item kria-pwrctl-dev)
WARNING: versions of kria-pwrctl available: 1.1
NOTE: Fetching uninative binary shim file:///home/pi/wsxilinx/kria_vitis_platform/2023.1/software/xilinx-kr260-starterkit-2023.1/components/yocto/downloads/uninative/5fab9a5c97fc73a21134e5a81f74498cbaecda75d56aab971c934e0b803bcc00/x86_64-nativesdk-libc-3.8.1.tar.xz;sha256sum=5fab9a5c97fc73a21134e5a81f74498cbaecda75d56aab971c934e0b803bcc00 (will check PREMIRRORS first)
Initialising tasks: 100% |###############################################################################################################################################| Time: 0:00:18
Checking sstate mirror object availability: 100% |#######################################################################################################################| Time: 0:01:53
Sstate summary: Wanted 3962 Local 0 Mirrors 3658 Missed 304 Current 0 (92% match, 0% complete)
WARNING: The qemu-xilinx-system-native:do_configure sig is computed to be 3654a56702bfd541b93eeb3ccde3d27f23a17e57912229984416f61234321a31, but the sig is locked to 83e594a8e6d13691dc61fbcad807aca3487d6f141a86e89d8a8a9de65e69ec1d in SIGGEN_LOCKEDSIGS_t-x86-64
NOTE: Executing Tasks
WARNING: zocl-202310.2.15.0-r0 do_package_qa: QA Issue: File /lib/modules/6.1.5-xilinx-v2023.1/extra/zocl.ko in package kernel-module-zocl-6.1.5-xilinx-v2023.1 contains reference to TMPDIR [buildpaths]
WARNING: kernel-module-mali-r9p0-01rel0-r0 do_package_qa: QA Issue: File /lib/modules/6.1.5-xilinx-v2023.1/extra/mali.ko in package kernel-module-mali-6.1.5-xilinx-v2023.1 contains reference to TMPDIR [buildpaths]
NOTE: Tasks Summary: Attempted 9868 tasks of which 8526 didn't need to be rerun and all succeeded.

Summary: There were 11 WARNING messages.
INFO: copy to TFTP-boot directory is not enabled !!
[INFO] Successfully built project
pi@piXlinx:~/wsxilinx/kria_vitis_platform/2023.1/software/xilinx-kr260-starterkit-2023.1$
```
```
pi@piXlinx:~/wsxilinx/kria_vitis_platform/2023.1/software/xilinx-kr260-starterkit-2023.1$ petalinux-build --sdk
[INFO] Sourcing buildtools
[INFO] Building project
[INFO] Silentconfig project
[INFO] Silentconfig rootfs
[INFO] Generating workspace directory
INFO: bitbake petalinux-image-minimal -c do_populate_sdk
NOTE: Started PRServer with DBfile: /home/pi/wsxilinx/kria_vitis_platform/2023.1/software/xilinx-kr260-starterkit-2023.1/build/cache/prserv.sqlite3, Address: 127.0.0.1:35773, PID: 770500
Loading cache: 100% |####################################################################################################################################################| Time: 0:00:01
Loaded 6268 entries from dependency cache.
Parsing recipes: 100% |##################################################################################################################################################| Time: 0:00:01
Parsing of 4344 .bb files complete (4337 cached, 7 parsed). 6275 targets, 292 skipped, 1 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
WARNING: preferred version 2023.1 of xmutil not available (for item xmutil)
WARNING: versions of xmutil available: 1.1
WARNING: preferred version 2023.1 of xmutil not available (for item xmutil-dev)
WARNING: versions of xmutil available: 1.1
WARNING: preferred version 2023.1 of kria-pwrctl not available (for item kria-pwrctl)
WARNING: versions of kria-pwrctl available: 1.1
WARNING: preferred version 2023.1 of kria-pwrctl not available (for item kria-pwrctl-dev)
WARNING: versions of kria-pwrctl available: 1.1
Initialising tasks: 100% |###############################################################################################################################################| Time: 0:00:12
Checking sstate mirror object availability: 100% |#######################################################################################################################| Time: 0:00:45
Sstate summary: Wanted 1678 Local 62 Mirrors 1127 Missed 489 Current 1304 (70% match, 83% complete)
NOTE: Executing Tasks
NOTE: Tasks Summary: Attempted 8812 tasks of which 7608 didn't need to be rerun and all succeeded.

Summary: There were 8 WARNING messages.
[INFO] Copying SDK Installer...
[INFO] Successfully built project



```

