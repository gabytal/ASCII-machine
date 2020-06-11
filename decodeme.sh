#!/bin/bash

#this script receives file path as argument, please use sh decodeme.sh $inputfile

#replace spaces with new lines, sort -uniqe to remove duplicates, remove letters with sed, convert ASCII to sentence, assign to a variable
value=$(tr ' ' '\n' < $1 | sort -u | sed 's/[A-Za-z]*//g'  |  awk '{ printf("%c",$0); }')

#print the sentence
echo $value
