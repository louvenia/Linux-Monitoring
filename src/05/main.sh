#!/bin/bash
export start=`date +%s`
if [[ $# -ne 1 ]]; then
    echo "Invalid number of parameters"
elif [[ "${1: -1}" != "/" ]]; then
    echo "Write the correct path"
elif [[ -d $1 ]]; then
    export path=$1
        ./export.sh
else
    echo "The path does not exist"
fi