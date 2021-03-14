FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
# https://dev.to/setevoy/docker-configure-tzdata-and-timezone-during-build-20bk
ENV TZ=Europe/Oslo
# intall celan and remove the abillity to install more pakaces
RUN apt-get update; apt-get upgrade -y; apt-get install nodejs npm nano mc git -y; apt-get autoremove -y; apt-get autoclean -y; npm install -g yarn; npm install -g npq; npm install -g snyk; rm -rf /var/lib/apt/lists/*
RUN useradd -ms /bin/bash oneuser
USER oneuser
RUN echo "alias yarn='/usr/local/lib/node_modules/yarn/bin/yarn'" >> /home/oneuser/.bash_aliases
WORKDIR /code/
