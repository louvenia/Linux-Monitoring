#!/bin/bash

source ./color.sh

if [[ $# -ne 4 ]]; then
    echo "Write correct parametrs"
else
    a=0
    while [ -n "$1" ]
    do
    case "$1" in
    1) array[a]="white" ;;
    2) array[a]="red" ;;
    3) array[a]="green" ;;
    4) array[a]="blue" ;;
    5) array[a]="purple" ;;
    6) array[a]="black" ;;
    *) echo "Invalid parametr"
    exit 1
    esac
    a=$(( $a + 1 ))
    shift
    done

    if [[ ${array[0]} == ${array[1]} || ${array[2]} == ${array[3]} ]]; then
    echo "Matching text and background colors. Choose other parametrs."
    exit 1
    fi

    case ${array[0]} in
    white) export s_text="${WHITE}" ;;
    red) export s_text="${RED}" ;;
    green) export s_text="${GREEN}" ;;
    blue) export s_text="${BLUE}" ;;
    purple) export s_text="${PURPLE}" ;;
    black) export s_text="${BLACK}" ;;
    esac

    case ${array[1]} in
    white) export s_back="${WHITE_B}" ;;
    red) export s_back="${RED_B}" ;;
    green) export s_back="${GREEN_B}" ;;
    blue) export s_back="${BLUE_B}" ;;
    purple) export s_back="${PURPLE_B}" ;;
    black) export s_back="${BLACK_B}" ;;
    esac

    case ${array[2]} in
    white) export f_text="${WHITE}" ;;
    red) export f_text="${RED}" ;;
    green) export f_text="${GREEN}" ;;
    blue) export f_text="${BLUE}" ;;
    purple) export f_text="${PURPLE}" ;;
    black) export f_text="${BLACK}" ;;
    esac

    case ${array[3]} in
    white) export f_back="${WHITE_B}" ;;
    red) export f_back="${RED_B}" ;;
    green) export f_back="${GREEN_B}" ;;
    blue) export f_back="${BLUE_B}" ;;
    purple) export f_back="${PURPLE_B}" ;;
    black) export f_back="${BLACK_B}" ;;
    esac

   export THE_END="${THE_END}"

    ./export.sh
fi
