#!/bin/sh

echo File Name:
read name

ffmpeg -video_size 1920x1080 -framerate 30 -f x11grab -i :1.0 -f pulse -ac 2 -i default -filter_complex "[1:a]pan=stereo|c0<c0+c1|c1<c0+c1[a]" -map 0:v -map "[a]" -c:v libx264 -preset ultrafast -tune zerolatency -c:a aac -strict experimental $name.mp4

