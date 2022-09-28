#!/bin/sh

file=/home/$USER/list

while read -r line; do
  echo this is $line
done < "$file"