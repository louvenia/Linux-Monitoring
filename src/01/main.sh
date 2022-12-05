#!/bin/bash

if ! [ $# -eq 1 ]; then
    echo "Invalid number of parametrs. Enter one text parametr."
else if ! [[ $1 =~ ^[0-9] ]]; then
    echo "$1"
else
    echo "This is invalid parametr. Enter the text."
fi
fi