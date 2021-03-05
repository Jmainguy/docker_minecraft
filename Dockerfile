FROM hub.soh.re/centos:latest
LABEL maintainer="Jonathan Mainguy <jon@jmainguy.com>"
LABEL minecraft_version=1.16.5
RUN yum install -y java-1.8.0-openjdk-devel wget
RUN mkdir /opt/minecraft \
    && chgrp -R 0 /opt/minecraft \
    && chmod -R g+rwX /opt/minecraft
WORKDIR /opt/minecraft
RUN wget https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar
ADD run.sh /opt/minecraft/
ADD eula.txt /opt/minecraft/
EXPOSE 25565
CMD ["/opt/minecraft/run.sh"]
