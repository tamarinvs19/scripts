rotate () {
    echo Start to rotate videos in $1
    for f in $(ls $1) 
    do
	$(ffmpeg -i $f -vf "transpose=2,transpose=2" -an -strict -2 $(echo 'Rot_'$f))
	# $(ffmpeg -i $(echo 'output_'$f) -vf "transpose=1" -strict -2 $(echo 'Rot_'$f))
    done
    echo Successfully! 
}

if [ $# -eq 1 ]
then
    rotate $1
else
    echo "Usage: ./rotate.sh <dircetory with videos>"
fi

