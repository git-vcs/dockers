FROM ubuntu:latest
ENV HOME=/home/oneuser SHELL=/bin/bash DISPLAY=:1 DEBIAN_FRONTEND=noninteractive 

# creating a timezone file
# https://dev.to/setevoy/docker-configure-tzdata-and-timezone-during-build-20bk
ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN if printf '%s\n' "`uname -a`" | grep -Fqe "x86_64"; then echo X86 CPU ; else echo arm ; fi

