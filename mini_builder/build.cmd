#!/bin/bash
mkdir -p /data/tmp/minibox /data/tmp/appliance
supermin5 -v -v --prepare --use-installed yum -o /data/tmp/minibox
supermin5 -v -v --build --format chroot /data/tmp/minibox -o /data/tmp/appliance
cd /data/tmp/appliance
tar --create . | xz --best > /data/minibox.tar.xz
rm -rf /data/tmp
