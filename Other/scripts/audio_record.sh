#!/bin/sh

ffmpeg -video_size 1920x1080 -framerate 30 -f x11grab -i :1.0 -f pulse -ac 2 -i default -c:v libx264 -c:a aac -strict experimental output.mp4


