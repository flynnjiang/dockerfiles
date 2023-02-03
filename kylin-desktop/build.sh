#!/bin/sh

. /etc/os-release

if test "$ID" != "kylin" && test "$ID_LIKE" != "debian"; then
	echo "Error: Must run on Kylin Desktop V10 SP1."
	exit 1
fi

sudo rm -rf rootfs

sudo debootstrap --no-check-gpg \
	--variant=minbase \
	--include=apt,apt-utils \
	--extra-suites=10.1-2403-update2 \
	--components=main,restricted,universe,multiverse \
	10.1 rootfs http://archive.kylinos.cn/kylin/KYLIN-ALL

sudo docker build -t kylin-desktop:latest .
