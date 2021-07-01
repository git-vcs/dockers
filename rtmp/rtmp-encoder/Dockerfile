FROM alpine:latest
RUN apk add --update ffmpeg
RUN apk add alsa-utils alsa-utils-doc alsa-lib alsaconf
ADD startstream.sh .
RUN chmod +x startstream.sh
CMD ["./startstream.sh"]
