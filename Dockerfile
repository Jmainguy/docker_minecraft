FROM hub.soh.re/centos:latest
LABEL maintainer="Jonathan Mainguy <jon@jmainguy.com>"
LABEL version=0.0.1
LABEL minecraft_version=1.14.4
RUN yum install -y java-1.8.0-openjdk-devel wget
RUN mkdir /opt/minecraft \
    && chgrp -R 0 /opt/minecraft \
    && chmod -R g+rwX /opt/minecraft
WORKDIR /opt/minecraft
RUN wget https://launcher.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar
ADD run.sh /opt/minecraft/
ADD eula.txt /opt/minecraft/
EXPOSE 25565
CMD ["/opt/minecraft/run.sh"]
