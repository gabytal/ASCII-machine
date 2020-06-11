#!/bin/bash

#replace space with new lines and sort by letter
content=$(tr ' ' '\n' <  $1  | sort -u )
sentence=""

#split using spaces 
splitted_by_lines=($(echo $content | tr " " "\n"))

#go through array and process each word
for word in "${splitted_by_lines[@]}"
do 
	#extract only digit from the word
	code=$(echo "${word//[^0-9]/}")

	#convert asci code to asci value and convert to sentence
	sentence+=$(echo "${code}" | printf "\x$(printf %x $code)")
done

echo $sentence
