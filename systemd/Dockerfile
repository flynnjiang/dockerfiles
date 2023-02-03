FROM ubuntu:24.04

# 更新包列表并安装 systemd
RUN apt-get update && \
    apt-get install -y systemd systemd-sysv locales sudo vim make curl wget net-tools && \
    locale-gen en_US.UTF-8 && \
    dpkg-reconfigure locales && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 设置环境变量以使用 UTF-8 编码
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

CMD ["/lib/systemd/systemd"]
