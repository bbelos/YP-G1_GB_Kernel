export CROSS_COMPILE=/home/bbelos/toolchains/arm-2009q3/bin/arm-none-linux-gnueabi-
INITRAMFS_SOURCE=../epic3buttonfix
INITRAMFS_DIR="usr/initramfs"

make palladio_rev01_defconfig
export LOCALVERSION="-G1XXKPN-CL562447"
rm $INITRAMFS_DIR/* -r
cp $INITRAMFS_SOURCE/* $INITRAMFS_DIR/ -r
cp $INITRAMFS_SOURCE/lib/modules/*.ko $INITRAMFS_DIR/lib/modules/
make -j12

cp arch/arm/boot/zImage ./recovery.bin
