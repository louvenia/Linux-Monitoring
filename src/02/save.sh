#!/bin/bash

read -p "Write data to file (Y/N)?"

if [[ $REPLY == Y || $REPLY == y ]]; then
    file="$(date +"%d_%m_%y_%H_%M_%S").status"
    ./output.sh > $file
fi
