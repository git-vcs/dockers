FROM alpine:latest
RUN apk add --update ffmpeg
ADD startstream.sh .
RUN chmod +x startstream.sh
CMD ["./startstream.sh"]
