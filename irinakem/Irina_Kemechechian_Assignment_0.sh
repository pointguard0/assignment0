dictionary = $2
cat $1  | fmt -1 | tr '[:upper:]' '[:lower:]' | tr -d '.' | uniq |  sort | comm - "$dictionary" -2 -3