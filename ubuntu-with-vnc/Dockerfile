FROM ubuntu:latest
RUN apt-get update --fix-missing
RUN apt-get upgrade -y

ENV HOME=/home/oneuser SHELL=/bin/bash DISPLAY=:1 USER=root HOME=/root
# creating a timezone file
# https://dev.to/setevoy/docker-configure-tzdata-and-timezone-during-build-20bk
ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENV DEBIAN_FRONTEND=noninteractive
# desktop envirement
RUN apt-get install xfce4 xfce4-goodies -y
RUN apt-get install dbus-x11 x11-utils alsa-utils mesa-utils libgl1-mesa-dri -y
RUN apt-get install nano mc -y
RUN apt-get install xorg xserver-xorg-video-dummy -y
RUN apt-get install firefox chromium-browser -y
RUN apt-get install tightvncserver -y
# vnc server
RUN apt-get install sudo  xvfb x11vnc ttf-ubuntu-font-family ttf-wqy-zenhei -y

RUN useradd -ms /bin/bash oneuser

RUN groupadd console; usermod -a -G console oneuser
RUN adduser oneuser sudo
RUN adduser oneuser root
RUN passwd -d oneuser
add xstartup /root/.vnc/
RUN chmod +x /root/.vnc/xstartup
add passwd /root/.vnc/
add passwd /home/oneuser/.vnc/
RUN chmod u=rw,og= /root/.vnc/passwd
RUN chmod u=rw,og= /home/oneuser/.vnc/passwd
add passwd /home/oneuser/.vnc/
add xstartup /home/oneuser/.vnc/
RUN sudo chown -R oneuser:oneuser /home/oneuser/.vnc
RUN chmod u=rw,og= /home/oneuser/.vnc/passwd
RUN chmod 777 /home/oneuser/.vnc/xstartup
USER root
ENTRYPOINT ["/bin/bash", "-c", "runuser -l oneuser -c vncserver; sleep 100"]	


