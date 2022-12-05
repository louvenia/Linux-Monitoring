#!/bin/bash

source ./color.sh

if [[ $# -ne 0 ]]; then
    echo "Invalid number of parametrs"
else
    source configuration.txt
    case ${column1_font_color} in
    1) export s_text="${WHITE}"; export b="1 (white)" ;;
    2) export s_text="${RED}"; export b="2 (red)" ;;
    3) export s_text="${GREEN}"; export b="3 (green)" ;;
    4) export s_text="${BLUE}"; export b="4 (blue)" ;;
    5) export s_text="${PURPLE}"; export b="5 (purple)" ;;
    6) export s_text="${BLACK}"; export b="6 (black)" ;;
    "") export s_text="${RED}"; export b="default (red)" ;;
    *) echo "Invalid parameter"
    exit 1
    esac
    
    case ${column1_background} in
    1) export s_back="${WHITE_B}"; export a="1 (white)" ;;
    2) export s_back="${RED_B}"; export a="2 (red)" ;;
    3) export s_back="${GREEN_B}"; export a="3 (green)" ;;
    4) export s_back="${BLUE_B}"; export a="4 (blue)" ;;
    5) export s_back="${PURPLE_B}"; export a="5 (purple)" ;;
    6) export s_back="${BLACK_B}"; export a="6 (black)" ;;
    "") export s_back="${BLACK_B}"; export a="default (black)" ;;
    *) echo "Invalid parameter"
    exit 1
    esac

    case ${column2_font_color} in
    1) export f_text="${WHITE}"; export d="1 (white)" ;;
    2) export f_text="${RED}"; export d="2 (red)" ;;
    3) export f_text="${GREEN}"; export d="3 (green)" ;;
    4) export f_text="${BLUE}"; export d="4 (blue)" ;;
    5) export f_text="${PURPLE}"; export d="5 (purple)" ;;
    6) export f_text="${BLACK}"; export d="6 (black)" ;;
    "") export f_text="${GREEN}"; export d="default (green)" ;;
    *) echo "Invalid parameter"
    exit 1
    esac

    case ${column2_background} in
    1) export f_back="${WHITE_B}"; export c="1 (white)" ;;
    2) export f_back="${RED_B}"; export c="2 (red)" ;;
    3) export f_back="${GREEN_B}"; export c="3 (green)" ;;
    4) export f_back="${BLUE_B}"; export c="4 (blue)" ;;
    5) export f_back="${PURPLE_B}"; export c="5 (purple)" ;;
    6) export f_back="${BLACK_B}"; export c="6 (black)" ;;
    "") export f_back="${PURPLE_B}"; export c="default (purple)" ;;
    *) echo "Invalid parameter"
    exit 1
    esac

    export THE_END="${THE_END}"

    if [[ ${a} == ${b} || ${c} == ${d} ]]; then
    echo "Matching text and background colors. Choose other parameters."
    exit 1
    fi

    ./export.sh
fi
