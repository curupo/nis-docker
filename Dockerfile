FROM ubuntu:24.04

RUN apt update
RUN apt install -y --no-install-recommends curl tar unzip openjdk-11-jre-headless
RUN apt clean


RUN useradd -d /home/nem -s /bin/bash nem
RUN mkdir -p /home/nem/nem
RUN chown nem:nem -R /home/nem/nem


#####################################################
# NIS
#####################################################
# Download
RUN cd /home/nem && curl https://bob.nem.ninja/nis-0.6.101.tgz -o nis-0.6.101.tgz
RUN cd /home/nem && tar -zxvf nis-0.6.101.tgz
RUN cd /home/nem && rm nis-0.6.101.tgz

# Config copy
COPY ./custom-configs/nis.config-user.properties /home/nem/package/nis/config-user.properties
COPY ./custom-shs/nix.runNis.sh /home/nem/package
RUN cd /home/nem && chown nem:nem -R package
RUN cd /home/nem && chmod +x package/nix.runNis.sh


#####################################################
# Servant
#####################################################
# Download
RUN cd /home/nem && curl https://bob.nem.ninja/servant_0_0_4.zip -o servant.zip
RUN cd /home/nem && unzip servant.zip
RUN cd /home/nem && rm servant.zip

# Config copy
COPY ./custom-configs/servant.config.properties /home/nem/servant/config.properties
COPY ./custom-shs/startservant.sh /home/nem/servant
RUN cd /home/nem && chown nem:nem -R servant
RUN cd /home/nem && chmod +x servant/startservant.sh


#####################################################
# Port
#####################################################
# WebSocket
EXPOSE 7778
# NIS
EXPOSE 7890
# Servant
EXPOSE 7880

