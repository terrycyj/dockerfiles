# Dockerfile
Dockerfile 基于 openjdk:8-jdk-alpine 安装了必要的工具软件.

* tini: 占用PID 1
* tar zip gzip unzip bzip2: 压缩/解压相关工具
* curl wget net-tools busybox-extras: 网络相关工具, telnet 位于busybox-extras
* openssh-client: ssh clieng

构建镜像示例:
```bash
docker build -t javabase:1.0 .
```

镜像已托管至腾讯云: ccr.ccs.tencentyun.com/easybase/javabase:1.0