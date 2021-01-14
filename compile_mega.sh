compile () {
        `avr-gcc -g -O1 -DPROC_atmega2560=1 -mmcu=atmega2560 -o $1 $2`
        echo OK
}

if [ $# -eq 2 ]
then
        compile $1 $2
elif [ $# -eq 1 ]
then
        compile "out.elf" $1
else
        echo "Usage: ./compile_mega.sh <out> <input_file>"
fi

