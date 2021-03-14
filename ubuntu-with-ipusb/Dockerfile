FROM ubuntu:20.04
ENV SHELL=/bin/bash DEBIAN_FRONTEND=noninteractive 
RUN apt update; apt upgrade -y
RUN apt install linux-tools-generic mc nano net-tools usbutils -y; apt clean -y; apt autoclean -y; apt autoremove -y; 

