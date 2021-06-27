This is a basic rtmp server and encoder for streaming video from a video device

You need to sett the right video device from the host pc on line ```12``` in the ```docker-compose.yml``` file.

By default this config is made to run encoder and stream on the same host pc. If you have another rtmp server you can specify your own url and use the ```rtmp-encoder/docker-compose.yml``` instead.
