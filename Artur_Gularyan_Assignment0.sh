cat $1 |fmt -1 | sed -e 's/\.//g' |  tr '[:upper:]' '[:lower:]' | uniq | sort| comm  - ./dictionary -2 -3