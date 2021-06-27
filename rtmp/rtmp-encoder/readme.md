You need to sett the right video device from the host pc on line 13 and specify the URL to the rtmp-server in the docker-compose.yml file


start: ```docker-compose up -d```


Or use docker: ``` docker build . -t rtmp-endocer ``` and then ``` docker run -d --rm --device=/dev/videoXX -e url=some-ip rtmp-encoder```
