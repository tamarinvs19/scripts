#!/bin/bash

if [ $# -eq 2 ]
then
    output_file=$1
    list=$2
    echo $list $output_file
    ffmpeg -f concat -i files -c:v libx264 -ac 2 -c:a aac -strict -2 -b:a 128k -crf 28 -r 24 video.mp4
else
    echo "Usage: ./compress.sh <OUTPUT_FILE> <LIST FILE>"
    echo Format of LIST_FILE:
    echo "   file 'NAME'"
    echo "   file 'NAME'"
    echo "   ..."
fi
    
