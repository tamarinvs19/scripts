load () {
        `avrdude -v -patmega328p -c arduino -P /dev/ttyUSB0 -U flash:w:'$1'`
        echo The end
}

if [ $# -eq 1 ]
then
        compile $1
else
        echo "Usage: ./load_nano.sh <out.elf>"
fi

