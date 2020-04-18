#!/bin/bash

update_theory=`curl https://bsse.compscicenter.ru/wiki/images/e/e6/Algorithms_II.pdf --output ~/Documents/university/sp/algo/Algorithms_II.pdf`

if [ $# -eq 0 ]
then
    echo "Do you want to update theory? [Y/n]"
    read command
    if [ $command == "Y" ] || [ $command == "" ]
    then
	$update_theory
    fi
elif [ $# -eq 1 ] && [ $1 == "th" ]
then
    $update_theory
else
    echo Nothing to do
fi
