compile () {
        `avr-gcc -g -O1 -mmcu=atmega328p -o $1 $2`
        echo OK
}

if [ $# -eq 2 ]
then
        compile $1 $2
elif [ $# -eq 1 ]
then
        compile "out.elf" $1
else
        echo "Usage: ./compile_nano.sh <out> <input_file>"
fi

