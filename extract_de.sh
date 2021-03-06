#!/bin/bash
wget https://nl.wikipedia.org/wiki/Rijksuniversiteit_Groningen #Loading the webpage
echo -ne '\n' #Create newline
echo -ne '\n' #Create newline
echo "The amount of De/de on the Dutch Wikipedia page of the Rijksuniveristeit Groningen:" > result.txt #Introduction sentence stored in result.txt
grep -Eo '\w+' Rijksuniversiteit_Groningen | grep -wic 'de' >> result.txt #Tokenize the file and add the amount of occurrences of 'De/de' to result.txt
echo "$(cat result.txt)" #Print content of result.txt
