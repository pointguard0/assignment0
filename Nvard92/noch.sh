#set -x

function print(){
echo $1
}


function checkArgs(){

if [ ! -n "$1" ]
then 
      print "The file to be checked is missing"
      exit
      
fi
}

function spell()
{

fmt -1 $1|tr A-Z a-z| sed -e 's|^[[:punct:]]*||; s|[[:punct:]]*$||' - | sort - | comm -23  - ../dictionary

}

checkArgs
spell $1

