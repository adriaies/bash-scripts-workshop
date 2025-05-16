#!/bin/bash

echo "digues una variable global"
read  variable			#We read a variable
echo ${!variable}		#execute the variable
echo $1
echo $2
echo $3
echo $?
echo $$
