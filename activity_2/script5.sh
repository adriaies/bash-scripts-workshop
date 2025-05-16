#!/bin/bash


echo "Write the path of a file"

read fpath

if [ -e "$fpath" ]; then
	echo `ls -l "$fpath"` 
	echo `file "$fpath"` #echoes the extension
    # In due the kind of expression seems  like the boolean gives a answer 
    [ -r "$fpath" ] && echo "It is readable." || echo "It is NOT readable."
    [ -w "$fpath" ] && echo "It is writable." || echo "It is NOT writable."
    [ -x "$fpath" ] && echo "It is executable." || echo "It is NOT executable."
else
    echo "ERROR: Please write the full path to an existing file."
fi
