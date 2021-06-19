FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
# https://dev.to/setevoy/docker-configure-tzdata-and-timezone-during-build-20bk
ENV TZ=Europe/Oslo
# intall celan and remove the abillity to install more pakaces
RUN apt-get update; apt-get upgrade -y; apt-get install nodejs npm nano mc git -y; apt install qtcreator qtmultimedia5-dev libqt5svg5-dev libboost-dev libssl-dev libboost-system-dev libboost-filesystem-dev openssl libgtest-dev rapidjson-dev -y
