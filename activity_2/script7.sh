#!/bin/bash

echo "send the complete path of a file" 
read fullpath

#with we check the path, if it exists we check permisions with ls -l

if [ -e $fullpath ]; then
	echo `ls -l $fullpath`
else
	echo "invalid path"
fi
