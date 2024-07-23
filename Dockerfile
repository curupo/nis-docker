FROM ubuntu:24.04

RUN apt update
RUN apt install -y openjdk-11-jdk-headless curl tar unzip

RUN mkdir /work


#####################################################
# NIS
#####################################################
# Download
RUN cd /work && curl -L http://bob.nem.ninja/nis-0.6.101.tgz > nis-0.6.101.tgz
RUN cd /work && tar zxvf nis-0.6.101.tgz

# Config copy
COPY ./custom-configs/nis.config-user.properties /work/package
COPY ./custom-shs/nix.runNis.sh /work/package
RUN chmod +x /work/package/nix.runNis.sh


#####################################################
# Servant
#####################################################
# Download
RUN cd /work && curl -L https://bob.nem.ninja/servant_0_0_4.zip > servant.zip
RUN cd /work && unzip servant.zip

# Config copy
COPY ./custom-configs/servant.config.properties /work/servant/config.properties
COPY ./custom-shs/startservant.sh /work/servant
RUN chmod +x /work/servant/startservant.sh


#####################################################
# Port
#####################################################
# websocket
EXPOSE 7778
# NIS
EXPOSE 7890
# Servant
EXPOSE 7880
