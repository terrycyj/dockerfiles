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

# Dockerfie-SpringBoot
Spring Boot 应用示例

构建镜像
```bash
docker build -f Dockerfile-SpringBoot --build-arg JAR_FILE=target/app.jar -t springboot-demo:1.0 .
```

运行容器
```bash
docker run -d --name springboot-demo \
-e JAVA_OPTS="-Xms4g -Xmx4g" \
-p 8080:8080 \
springboot-demo:1.0
```