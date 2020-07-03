#!/bin/sh

cd /tmp
mencoder tv:// -tv driver=v4l2:width=640:height=480:noaudio:outfmt=uyvy:fps=3 -ss 1 -endpos 1.5 -ovc copy -o 1.avi
mplayer 1.avi -vo jpeg
rm -rf 1.avi 00000001.jpg 00000002.jpg 00000003.jpg
cd /home/slava
for num in `seq 8 -1 0`
do
    [ -f $num.jpg ] && mv $num.jpg $[ $num + 1 ].jpg
    [ -f $num-a.jpg ] && mv $num-a.jpg $[ $num + 1 ]-a.jpg
done
mv /tmp/00000005.jpg /home/slava/"SJ_Photo_${date}.jpg"
