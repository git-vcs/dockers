FROM ubuntu:20.04
ENV SHELL=/bin/bash DEBIAN_FRONTEND=noninteractive 
RUN apt update
RUN apt upgrade -y
RUN apt install mpv mpg123 -y
RUN apt install alsa -y
RUN useradd -ms /bin/bash oneuser
RUN adduser oneuser audio
USER oneuser
WORKDIR /home/oneuser
