rescue-system
=============

Virtualmaster Rescue System


### Preparing system

Installation of required package

    apt-get install live-build

Editing of minimal template

    echo "ssh vim rsync cpio tar gzip bzip2 lzma wget curl ftp xz-utils alpine-pico e2fsck-static btrfs-tools" >> /usr/share/live/build/package-lists/minimal