#!/bin/sh

while true
	do
		if test "$url"
		then
			echo using supplied rtmp server $url
			sleep 5
			ffmpeg -re -f v4l2 -i `ls  /dev/video*` -vcodec libx264 -preset ultrafast -f flv rtmp://$url
		else
			echo using default rtmp server
			sleep 5
			ffmpeg -re -f v4l2 -i `ls  /dev/video*` -vcodec libx264 -preset ultrafast -f flv rtmp://127.0.0.1:1935/live/b
		fi
		sleep 2
	done

