#!/bin/bash

cat $1 | tr -d [:punct:]| tr '[:upper:]' '[:lower:]' | fmt -1 | sort| uniq - | comm -23 - ../dictionary

# run  ./assignment0.sh ../text_to_spell 
