FROM centos:latest
LABEL maintainer="Jonathan Mainguy <jon@jmainguy.com>"
LABEL version=0.0.1
LABEL minecraft_version=1.13.1
RUN yum install -y java-1.8.0-openjdk-devel wget
RUN mkdir /opt/minecraft \
    && chgrp -R 0 /opt/minecraft \
    && chmod -R g+rwX /opt/minecraft
WORKDIR /opt/minecraft
RUN wget https://launcher.mojang.com/v1/objects/fe123682e9cb30031eae351764f653500b7396c9/server.jar
ADD run.sh /opt/minecraft/
ADD eula.txt /opt/minecraft/
EXPOSE 25565
CMD ["/opt/minecraft/run.sh"]
