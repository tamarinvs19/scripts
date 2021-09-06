for file in $(ls $1)
do
        $(ffmpeg -i $file -vcodec copy -an $(echo 'Video_'$file))
done
