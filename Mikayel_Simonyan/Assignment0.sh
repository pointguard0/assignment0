#!/bin/bash

text_file = $1
dictionary = $2

cat "$text_file" |fmt -1 | sed -e 's/\.//g' | sed -e 's/,//g' | tr '[:upper:]' '[:lower:]' | uniq | sort| comm  - "$dictionary"  -2 -3