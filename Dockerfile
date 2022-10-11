FROM ubuntu:20.04

WORKDIR /root

RUN set -e;\
    apt update; \
    sed -i 's!http://security.ubuntu.com!'http://mirrors.aliyun.com'!g' /etc/apt/sources.list; \
    sed -i 's!http://archive.ubuntu.com!'http://mirrors.aliyun.com'!g' /etc/apt/sources.list; \
    apt install -y curl unzip git; \
    curl -fsSL https://get.deta.dev/cli.sh | sh;
