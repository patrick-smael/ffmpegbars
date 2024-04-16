#!/bin/bash

/usr/bin/ffmpeg -nostats -loglevel 0 -re -f lavfi -i "smptehdbars=rate=60:size=1920x1080" -f lavfi -i "sine=frequency=1000:sample_rate=48000" -vf "[in]drawtext=fontsize=200:fontcolor=Black:fontfile='/Windows/Fonts/arial.ttf':text='SMILE PRODUCTIONS':x=w-mod(max(t-4.5\,0)*(w+tw)/5.5\,(w+tw)):y=450, drawtext=fontsize=100:fontcolor=Blue:fontfile='/Windows/Fonts/arial.ttf':text='%{localtime\:%X}':x=(w-tw)/2:y=640, drawtext=fontsize=80:fontcolor=Red:fontfile='/Windows/Fonts/arial.ttf':text='%{localtime\:%d-%m-%y}':x=(w-tw)/2:y=735[out]" -f flv -c:v h264 -profile:v baseline -pix_fmt yuv420p -preset ultrafast -crf 18 -c:a aac "rtmp://example.com"
