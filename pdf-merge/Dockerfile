FROM ubuntu:latest
RUN apt-get update
RUN apt-get upgrade -y
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
