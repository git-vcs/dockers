FROM ubuntu:latest
RUN apt update
RUN apt upgrade -y
RUN apt install openjdk-8-jdk -y
ADD server.jar /
ADD eula.txt /
ADD server.properties /
ADD startserver.sh /
RUN chmod 777 /startserver.sh
CMD ["./startserver.sh"]
