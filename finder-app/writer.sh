#!/bin/bash

if [[ $# -lt 2 ]]; then
    echo "Please use the script with 2 arguments"
    echo "Arg 1: Full path to a file" 
    echo "Arg 2: Content of the file"
    exit 1
fi

writefile=$1
writestr=$2
touch $writefile
if [ $? -eq 0 ]; then
	echo $writestr >> $writefile
else
	echo "File could not be created"
fi
