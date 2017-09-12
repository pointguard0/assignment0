cat $1 | tr '[:upper:]' '[:lower:]' | fmt -1 | uniq | sort | sed 's/\.//g' | comm -13 dictionary -
