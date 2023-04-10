#!/bin/bash

# set the folder path
folder="/path/to/folder"

# loop through the files in the folder
for file in "$folder"/*
do
  # check if the file is greater than 2GB
  if [ $(stat -c %s "$file") -gt $((2*1024*1024*1024)) ]
  then
    # delete the file
    rm "$file"
    echo "Deleted $file"
  fi
done

echo "Finished deleting files."