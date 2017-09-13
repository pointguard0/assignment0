set -x

function print(){
echo $1
}


function checkArgs(){

if [ ! -n "$1" ]
then 
      print "The file to be checked is missing"
      exit
else 
  if [ ! -n "$2" ]
  then 
    print "The dictionary is not given"
    exit
  fi
fi
}

function spell()
{

fmt -1 $1|sort|tr A-Z a-z| comm -13  $2  -

}

checkArgs
spell $1

