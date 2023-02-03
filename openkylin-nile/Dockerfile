FROM ubuntu:latest AS rootfs-stage

WORKDIR /tmp

RUN apt-get update && apt-get -y install git debootstrap && \
	git clone -b openkylin/nile https://gitee.com/openkylin/debootstrap.git && \
	cd debootstrap && \
	DEBOOTSTRAP_DIR=`pwd` sh ./debootstrap --no-check-gpg --variant=minbase nile ../rootfs http://archive.openkylin.top/openkylin

FROM scratch

MAINTAINER "Feng Jiang <flynnjiang@163.com>"

COPY --from=rootfs-stage /tmp/rootfs/. /

CMD ["/bin/bash"]
