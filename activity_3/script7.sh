#!/bin/bash

echo "Welcome to paper rock scissors"

play=yes



while [ "$play" = "yes" ] ; do	#initiate the loop

	echo "rock=1 paper=2 scissors=3"
	echo "chose wisely"

	read player

	options="1 2 3"
	robot=$(echo $options | cut -d' ' -f$((RANDOM % 3 + 1))) #we cut on options where the space and chose between 3 numbers
	echo "$robot" #for debug

	if [ "$player" = "1" ] && [ "$robot" = "2" ]; then		#list of diferent options
		echo "you lose if"

		elif [ "$player" = "1" ] && [ "$robot" = "3" ]; then
			echo "you win elif1"
		elif [ "$player" = "2" ] && [ "$robot" = "1" ]; then
			echo "you win elif2"
		elif [ "$player" = "2" ] && ["$robot" = "3" ]; then
			echo "you lose elif3"
		elif [ "$player" = "3" ] && [ "$robot" = "1" ]; then
			echo "you lose elif4"
		elif [ "$player" = "3" ] && [ "$robot" = "2" ]; then
			echo "you won elif5"
		elif [ "$player" = "$robot" ]; then
			echo "draw"
	else
		echo "fatal error wrong number"
	fi


	echo "do you want to play? yes/no" #Play again
	read play

done
