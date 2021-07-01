#!/bin/sh
while true
	do
		if test "$url"
		then
			echo using supplied rtmp server $url
			sleep 5
			ffmpeg -re -f v4l2 -i /dev/video0 -vcodec libx264 -preset ultrafast -threads $FFMPEG_THREADS -f flv rtmp://$url
		else
			echo using default rtmp server
			sleep 5
			ffmpeg -re -f v4l2 -i /dev/video0 -vcodec libx264 -preset ultrafast -threads $FFMPEG_THREADS -f flv rtmp://127.0.0.1:1935/live/b
		fi
		sleep 2
	done

