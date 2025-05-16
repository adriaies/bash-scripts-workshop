#!/bin/bash

URL="ies-sabadell.cat"

conection=0	#Set variable at 0

while [ $conection -eq 0 ]; do	#while is 0 we stay on the loop
	if  ping -c 1 $URL ; then		#ping if it works we have a true and get out of the loop, else we wait 5s and try again
		echo "Conection working"
		conection=1
	else
		echo "no conection detected"
		sleep 5
	fi
done

firefox "$URL"  #Open a browser

