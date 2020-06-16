FROM ubuntu:latest
RUN apt update
RUN apt upgrade -y
RUN useradd -ms /bin/bash oneuser
USER oneuser
WORKDIR /home/oneuser
add testFile $HOME
