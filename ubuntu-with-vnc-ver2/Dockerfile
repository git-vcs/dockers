FROM ubuntu:20.04
ENV HOME=/home/oneuser SHELL=/bin/bash DISPLAY=:1 DEBIAN_FRONTEND=noninteractive 
RUN apt-get update --fix-missing
RUN apt-get upgrade -y


# creating a timezone file
# https://dev.to/setevoy/docker-configure-tzdata-and-timezone-during-build-20bk
ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


# desktop envirement
RUN apt-get install xfce4 xfce4-terminal -y

RUN apt-get install nano mc -y
RUN apt-get install firefox chromium-browser -y

# vnc server
RUN apt-get install tightvncserver -y

# adding sudo
RUN apt-get install sudo -y


###########################################################################################
#
#note: some of these commands are duplicates for both root and oneuser
#the vnc-password is 123456
#
##########################################################################################



add xstartup /root/.vnc/
RUN chmod +x /root/.vnc/xstartup
add passwd /root/.vnc/
RUN chmod u=rw,og= /root/.vnc/passwd


RUN useradd -ms /bin/bash oneuser
RUN passwd -d oneuser
RUN adduser oneuser sudo
add passwd /home/oneuser/.vnc/
RUN chmod u=rw,og= /home/oneuser/.vnc/passwd
add passwd /home/oneuser/.vnc/
add xstartup /home/oneuser/.vnc/
RUN chown -R oneuser:oneuser /home/oneuser/.vnc
RUN chmod u=rw,og= /home/oneuser/.vnc/passwd
RUN chmod 777 /home/oneuser/.vnc/xstartup
USER root
EXPOSE 5901
ENTRYPOINT ["/bin/bash", "-c", "runuser -l oneuser -c vncserver ; sleep inf"]	


