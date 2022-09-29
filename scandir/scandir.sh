#! /bin/bash
#Snippet: small bash script to scan folder names and put the list into the file.

FolderToScan="/home/$USER/ms"
ListFile="/home/$USER/install/list"

cd $FolderToScan
ls -d */ | cut -f1 -d'/' >> $ListFile

echo "Done"