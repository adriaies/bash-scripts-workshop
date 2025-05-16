#!/bin/bash
#Write a script that first retrieves the list of system user accounts containing uppercase letters. 
#Then, ask the user to input a username. While the inputted username is not valid (i.e., does not exist), display an error message.
#Once a valid username is entered, display ALL available information about that system user.

users=$(cut -d: -f1 /etc/passwd | grep '[A-Z]') #we create a variable with the users
#echo $users

echo "Write a system user" #enter the loop
read user

while ! grep -q "^$user:" /etc/passwd ; do	#While we dont have a account user we stay on the loop
	echo "Error user dosn't exist write a system user"
	read user
done

cat /etc/passwd | grep $user

