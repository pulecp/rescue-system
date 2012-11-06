umount chroot/proc
umount chroot/sys
umount chroot/dev/pts

#export PROJECT=ubuntu SUITE=precise ARCH=amd64
rm -rf scripts chroot cache .stage binary binary.img
rm -rf config
#mkdir config/chroot_local-includes/home/kayn
#minimal ssh mkfs fsck vim mcedit pico rsync cpio tar gzip bzip2 lzma/xz wget curl ftp" \

lb clean
lb config -b iso -p minimal -a amd64 -d sid --hostname rescue.virtualmaster.cz --bootappend-live "locale=cs_CZ.utf8 noautologin nouser"

#lb config -b iso -p minimal \
#  --architecture amd64 \
#  --hostname rescue.virtualmaster.cz \
#  --bootappend-live "locale=cs_CZ.utf8 noautologin nouser" \
#  -d sid \
#  --apt-recommends false \
#  --syslinux-timeout 30
##  --apt-ftp-proxy http://admin.chl.cz:3128/ \
#  --apt-http-proxy http://admin.chl.cz:3128/ \


# add specific hooks
#cp hooks/*.sh config/chroot_local-hooks
#cp packages/*.deb config/chroot_local-packages

#export MKSQUASHFS_OPTIONS="-e boot -e lib/modules/2.6.26-2-amd64 usr/share/doc"

lb build
