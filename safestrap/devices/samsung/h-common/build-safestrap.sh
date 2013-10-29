#!/usr/bin/env bash
mkdir -p $OUT/recovery/root/etc
mkdir -p $OUT/recovery/root/sbin
mkdir -p $OUT/APP
mkdir -p $OUT/install-files/etc/safestrap/res/
mkdir -p $OUT/install-files/etc/safestrap/rootfs/
cd $ANDROID_BUILD_TOP/bootable/recovery/safestrap/devices/samsung
cp -fr h-common/APP/* $OUT/APP/
cp -fr h-common/res/* $OUT/install-files/etc/safestrap/res/
cp -fr h-common/sbin-libs/* $OUT/recovery/root/sbin/
cp -fr h-common/hijack $OUT/install-files/etc/init.qcom.modem_links.sh
cp -fr h-common/twrp.fstab $OUT/recovery/root/etc/twrp.fstab
cp -fr h-common/ss.config $OUT/install-files/etc/safestrap/ss.config
cp -fr h-common/ss.config $OUT/APP/ss.config
cp -fr h-common/ss.config $OUT/recovery/root/ss.config
cp -fr h-common/rootfs/* $OUT/install-files/etc/safestrap/rootfs/
cp -fr ../../sbin-extras/* $OUT/install-files/etc/safestrap/
cd ../../../gui