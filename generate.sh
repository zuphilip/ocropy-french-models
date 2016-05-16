#!/bin/bash

# USAGE: ./generate.sh [-t txtFILE] [-f ttfFILE] [-n NUMBER] [-c]
# If any argument is skipped then the default value
# will be taken. The clean option -c will remove any
# any existing files and subfolders in the lines directory.

var_text="texts/vendetta.txt"
var_font="fonts/IMFeFCrm29P.ttf"
var_m="30"

while getopts ":t:f:m:c" opt; do
  case $opt in
    t)
      var_text=$OPTARG
      ;;
    f)
      var_font=$OPTARG
      ;;
    m)
      var_m=$OPTARG
      ;;
    c)
      echo "cleaning the lines directory, i.e. removing any existing files"
      rm -I -r lines/*
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

./transform.sh "$var_text"
ocropus-linegen -t "$var_text" -f "$var_font" -m "$var_m" -o lines
mv lines/*/*.bin.png lines/
mv lines/*/*.gt.txt lines/
./untransform.sh lines

