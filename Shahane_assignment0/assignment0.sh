
echo "$(tr ' ' '\n' <<< "$(cat $1)" | tr -d '.' | tr '[:upper:]' '[:lower:]' | sort | uniq)" >> un_text.txt

dict=$(<dictionary.txt)

echo "$dict" | uniq >> un_dict.txt

diff un_dict.txt un_text.txt | sed -n 's/^> \(.*\)/\1/p' >> answer.txt

echo "$(sort -u answer.txt)"
