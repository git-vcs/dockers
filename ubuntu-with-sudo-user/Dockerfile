FROM ubuntu:latest
ENV HOME=/home/oneuser SHELL=/bin/bash DISPLAY=:1 DEBIAN_FRONTEND=noninteractive 
RUN apt-get update --fix-missing
RUN apt-get upgrade -y


# creating a timezone file
# https://dev.to/setevoy/docker-configure-tzdata-and-timezone-during-build-20bk
ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# adding sudo
RUN apt-get install sudo -y




RUN useradd -ms /bin/bash oneuser
RUN passwd -d oneuser
RUN adduser oneuser sudo
USER oneuser


