FROM ubuntu:latest
ENV HOME=/home/oneuser SHELL=/bin/bash DISPLAY=:1 DEBIAN_FRONTEND=noninteractive 

# creating a timezone file
# https://dev.to/setevoy/docker-configure-tzdata-and-timezone-during-build-20bk
ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# install SDK
RUN apt-get update --fix-missing
RUN apt-get upgrade -y
RUN apt-get install apt-transport-https curl wget -y
RUN wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb;
RUN dpkg -i packages-microsoft-prod.deb; rm packages-microsoft-prod.deb;
RUN apt-get update --fix-missing
RUN apt-get upgrade -y
##RUN apt-get install apt-transport-https curl wget -y

RUN useradd -ms /bin/bash oneuser
RUN passwd -d oneuser
#RUN adduser oneuser sudo

USER oneuser

RUN if printf '%s\n' "`uname -a`" | grep -Fqe "x86_64"; then apt-get install -y dotnet-sdk-5.0 aspnetcore-runtime-5.0; else RUN curl -sSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --channel Current; fi

# x86 only
#RUN apt-get install -y dotnet-sdk-5.0 aspnetcore-runtime-5.0;

# arm only
#RUN curl -sSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --channel Current




# turn off telemetry
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
ENV ASPNETCORE_ENVIRONMENT=Development
ENV DOTNET_USE_POLLING_FILE_WATCHER=true  
ENV ASPNETCORE_URLS=http://+:80  
EXPOSE 80
USER oneuser
RUN echo 'export DOTNET_ROOT=$HOME/.dotnet' >> ~/.bashrc
RUN echo 'export PATH=$PATH:$HOME/.dotnet' >> ~/.bashrc



# adding sudo and other programs for debug
RUN apt-get install sudo htop git nano mc -y


