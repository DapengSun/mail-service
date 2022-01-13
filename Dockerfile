# Docker image for springboot file run
# VERSION 0.0.1
# Author: sdp
# 基础镜像使用java
FROM java:8
# 作者
MAINTAINER sdp <13520387252@163.com>
# VOLUME 指定了临时文件目录为/tmp。
# 其效果是在主机 /var/lib/docker 目录下创建了一个临时文件，并链接到容器的/tmp
VOLUME /tmp
# 将jar包添加到容器中并更名为common-mail-service.jar
ADD target/common-mail-service-1.0-SNAPSHOT.jar /common-mail-service.jar
# 运行jar包
RUN bash -c 'touch /common-mail-service.jar'
ENV TZ 'Asia/Shanghai'
EXPOSE 8089
ENTRYPOINT ["java","-jar","/common-mail-service.jar"]