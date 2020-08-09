FROM ubuntu:20.04
RUN apt-get update
RUN apt-get upgrade -y
# creating a timezone file
# https://dev.to/setevoy/docker-configure-tzdata-and-timezone-during-build-20bk
ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get install git texlive -y
RUN useradd -ms /bin/bash oneuser
WORKDIR /home/oneuser
ADD /start.sh $HOME 
RUN chmod 777 start.sh
USER oneuser
RUN mkdir pdfmerge
USER root
RUN ln -s /home/oneuser/pdfmerge /pdfmerge
USER oneuser
RUN git clone https://github.com/git-vcs/pdf-merge
RUN find . \( ! -regex '.*/\..*' \) -type f -name "*"
CMD ./start.sh
