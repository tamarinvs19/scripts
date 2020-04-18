#!/bin/bash

echo Do you want to clean this directory? [Y/n]
read cmd

if [ $cmd = 'Y' ] || [ $cmd = 'y' ] || [ $cmd = '' ]
then
    rm *.toc 2> /dev/null || echo has not *.toc
    rm *.aux 2> /dev/null || echo has not *.aux
    rm *.log 2> /dev/null || echo has not *.log
    rm *.out 2> /dev/null || echo has not *.out
    rm *.fls 2> /dev/null || echo has not *.fls
    rm *.fdb_latexmk 2> /dev/null || echo has not *.fdb_latexmk
    rm *.synctex.gz 2> /dev/null || echo has not *.synctex.gz
    rm string.pdf 2> /dev/null || echo has not string.pdf

    echo Done!
else
    echo Exit, nothing has been changed.
fi
