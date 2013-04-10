export CROSS_COMPILE=/home/bbelos/toolchains/arm-2009q3/bin/arm-none-linux-gnueabi-
INITRAMFS_SOURCE=../epic3buttonfix
INITRAMFS_DIR=G1initramfs
#make steve_defconfig
make palladio_rev01_defconfig
#export KBUILD_BUILD_VERSION="STeVE's0.1"
export LOCALVERSION="-G1XXKPN-CL562447"
make -j12
rm $INITRAMFS_DIR/* -r
cp $INITRAMFS_SOURCE/* $INITRAMFS_DIR/ -r
cp $INITRAMFS_SOURCE/lib/modules/*.ko $INITRAMFS_DIR/lib/modules/
#cp crypto/ansi_cprng.ko $INITRAMFS_DIR/lib/modules/
#cp drivers/scsi/scsi_wait_scan.ko $INITRAMFS_DIR/lib/modules/
#cp drivers/net/wireless/bcm4329/dhd.ko $INITRAMFS_DIR/lib/modules/
#cp drivers/misc/vibetonz/vibrator.ko $INITRAMFS_DIR/lib/modules/
#cp drivers/misc/fm_si4709/Si4709_driver.ko $INITRAMFS_DIR/lib/modules/
#cp drivers/bluetooth/bthid/bthid.ko $INITRAMFS_DIR/lib/modules/
make -j12
cp arch/arm/boot/zImage ./recovery.bin
#tar cvf kernel.tar zImage
#rm zImage
