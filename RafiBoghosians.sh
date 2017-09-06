#!/bin/bash


dictionary=./dictionary
fileInput=$1 

echo "The words that contain mistakes"

while read line;   
do
	
  	cat $fileInput | fmt -1 | tr A-Z a-z | sort | uniq | comm -13 $dictionary - | tr -d '.' 
	

done < $fileInput



