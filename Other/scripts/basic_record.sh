#!/bin/sh

ffmpeg -video_size 1920x1080 -framerate 30 -f x11grab -i :1.0 -f alsa -i default -draw_mouse 1 output.mp4
