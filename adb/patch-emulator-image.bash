#!/bin/bash

usage() {
    echo "$0 [ramdisk.img path]"
    exit 1
}

if [[ $# != 1 ]]; then
    usage
fi

ramdisk="$1"
scriptdir="$(dirname "$(readlink -f "$0")")"

if [[ ! -f $ramdisk ]]; then
    echo "File does not exist: $ramdisk"
    usage
fi

workdir="$(mktemp -d)"
trap '{ rm -rf "$workdir"; }' EXIT

cd "$workdir" || exit "Couldn't change to $workdir"

if [[ ! -f $ramdisk.orig ]]; then
    cp "$ramdisk" "$ramdisk.orig"
fi

zcat "$ramdisk.orig" | cpio -idm --quiet
cat "$scriptdir/adbd.android-16" > sbin/adbd
zcat "$ramdisk.orig" | cpio -t --quiet | cpio --quiet -H newc -o --owner 0:0 | gzip -9 -n > "$ramdisk"
