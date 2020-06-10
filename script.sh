#!/bin/bash

#replace spaces with new lines, sort -uniqe to remove duplicates, remove letters with sed, convert ASCII to sentence, assign to a variable
value=$(tr ' ' '\n' < input | sort -u | sed 's/[A-Za-z]*//g'  |  awk '{ printf("%c",$0); }')

#print the sentence
echo $value 
     