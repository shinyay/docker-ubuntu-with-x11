# 18.04
# https://hub.docker.com/_/ubuntu
FROM ubuntu:bionic-20190424

MAINTAINER shinyay

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && 
apt-get install -y sudo xauth xorg openbox && 
apt-get install -y libxext-dev libxrender-dev libxtst-dev firefox && 
apt-get install -y apt-transport-https ca-certificates libcurl3-gnutls && 
apt-get clean && 
rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
