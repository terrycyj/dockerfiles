FROM openjdk:8-jdk-alpine
MAINTAINER Terry <yongjun69.chen@gmail.com>

ENV LANG=C.UTF-8 \
    TZ="Asia/Shanghai"

RUN apk update && apk add tini bash vim fontconfig \
    tar zip gzip unzip bzip2 \
    curl wget net-tools busybox-extras \
    openssh-client

ENTRYPOINT ["/sbin/tini", "--"]