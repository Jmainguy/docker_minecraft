FROM centos:latest
LABEL maintainer="Jonathan Mainguy <jon@jmainguy.com>"
LABEL version=0.0.1
LABEL minecraft_version=1.13.2
RUN yum install -y java-1.8.0-openjdk-devel wget
RUN mkdir /opt/minecraft \
    && chgrp -R 0 /opt/minecraft \
    && chmod -R g+rwX /opt/minecraft
WORKDIR /opt/minecraft
RUN wget https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar
ADD run.sh /opt/minecraft/
ADD eula.txt /opt/minecraft/
EXPOSE 25565
CMD ["/opt/minecraft/run.sh"]
