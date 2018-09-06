FROM centos:latest
LABEL maintainer="Jonathan Mainguy <jon@jmainguy.com>"
LABEL version=0.0.1
LABEL minecraft_version=1.13.1
WORKDIR /opt/minecraft
RUN yum install -y java-1.8.0-openjdk-devel wget
RUN wget https://launcher.mojang.com/v1/objects/fe123682e9cb30031eae351764f653500b7396c9/server.jar
ADD run.sh /opt/minecraft/
ADD eula.txt /opt/minecraft/
VOLUME /opt/minecraft
EXPOSE 25565
CMD ["/opt/minecraft/run.sh"]
