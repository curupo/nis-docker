FROM ubuntu:20.04

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN apt-get update
RUN apt install -y --no-install-recommends curl tar unzip openjdk-11-jre-headless
RUN apt-get clean

WORKDIR /work

RUN curl https://bob.nem.ninja/nis-0.6.101.tgz -o nis-0.6.101.tgz
RUN tar -zxvf nis-0.6.101.tgz
RUN rm nis-0.6.101.tgz
COPY config-user.properties /work/package
RUN chmod +x package/nix.runNis.sh

EXPOSE 7778
EXPOSE 7890

WORKDIR /work/package/nis
ENTRYPOINT [ "java", "-cp", ".:./*:../libs/*", "org.nem.deploy.CommonStarter" ]
CMD [ "-Xms4G", "-Xmx6G" ]
