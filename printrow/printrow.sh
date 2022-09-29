#!/bin/sh
#Snippet: small bash script to read every row one by one from the file and make it 
#as a value of variable in a while loop.

ListFile="/home/$USER/install/list"

while read -r line; do
  echo this is $line
done < "$ListFile"