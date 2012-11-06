umount chroot/proc
umount chroot/sys
umount chroot/dev/pts

rm -rf scripts chroot cache .stage binary binary.img
rm -rf config
mkdir config/chroot_local-includes/home/jl

lh_config -b iso -p rescue -m http://ftp.cz.debian.org/debian/ \
  --architecture amd64 \
  -d lenny \
  --apt-ftp-proxy http://admin.chl.cz:3128/ \
  --apt-http-proxy http://admin.chl.cz:3128/ \
  --hostname rescue.virtualmaster.cz \
  --syslinux-timeout 30 \
  --bootappend-live "locale=cs_CZ.utf8 noautologin nouser" \
  --apt-recommends disabled


# add specific hooks
cp hooks/*.sh config/chroot_local-hooks
cp packages/*.deb config/chroot_local-packages

export MKSQUASHFS_OPTIONS="-e boot -e lib/modules/2.6.26-2-amd64 usr/share/doc"

lh_build
