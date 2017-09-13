comm -2 -3 <(sort $1 | sed s'/.$//' | fmt -1 | tr "A-Z" "a-z" | sort | uniq) <(sort dictionary | uniq)
