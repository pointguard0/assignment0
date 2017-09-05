dictionary="../dictionary"

if [ -z "$1"]; then
	echo "Usage: spellcheck.sh [filetocheck] [dictionary]"
	exit 1
else if [ -z "$2" ]; then
	echo "No dictionary specified: Using the defoult in $dictionary"
else 
	dictionary = $2
fi
fi

file_to_spell="$1"

dic=`cat $dictionary`

text_to_spell=`cat $file_to_spell | awk '{print tolower($0)}' | tr ' |.' '\n' | sort -u`
missings=`comm -13 $dictionary <(echo $text_to_spell)`

for word in $text_to_spell; do
	missing=`comm -13 $dictionary <(echo $word)`
	if [ ! -z "$missing" -a "$missing" != " " ]; then
		echo "$missing"
	fi
done
