FROM ubuntu:latest
ENV HOME=/home/oneuser SHELL=/bin/bash DISPLAY=:1 DEBIAN_FRONTEND=noninteractive 

# creating a timezone file
# https://dev.to/setevoy/docker-configure-tzdata-and-timezone-during-build-20bk
ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


# install SDK
RUN apt-get update --fix-missing
RUN apt-get install apt-transport-https wget -y
RUN wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb;
RUN dpkg -i packages-microsoft-prod.deb; rm packages-microsoft-prod.deb;
RUN apt-get update --fix-missing
RUN apt-get upgrade -y
RUN apt-get install apt-transport-https wget -y
RUN apt-get install -y dotnet-sdk-5.0;

# install run-time
RUN apt-get install aspnetcore-runtime-5.0 -y 



# adding sudo and other programs for debug
RUN apt-get install sudo htop git nano mc -y

RUN useradd -ms /bin/bash oneuser
RUN passwd -d oneuser
RUN adduser oneuser sudo
# turn off telemetry
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
USER oneuser




