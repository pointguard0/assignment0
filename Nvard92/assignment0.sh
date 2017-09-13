
function spell()
{

fmt -1 $1|tr A-Z a-z| sed -e 's|^[[:punct:]]*||; s|[[:punct:]]*$||' - | sort - | comm -23  - ../dictionary

}

spell $1

