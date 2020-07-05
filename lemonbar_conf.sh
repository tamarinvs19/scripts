#!/bin/bash

Clock() {
    DATETIME=$(date "+%d.%m %H:%M")
    echo -n $DATETIME
}

Battery() {
    BATPERC=$(acpi --battery | cut -d, -f2)
    echo $BATPERC
}

while true
do
    echo "%{l}%{F#888}%{B#121212} $(Clock) %{F-}%{B-}%{r}%{F#888}%{B#121212}Bat: $(Battery)"
    sleep 1
done

