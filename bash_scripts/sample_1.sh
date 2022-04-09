#!/bin/bash
echo -e "Username:"
read username
if id -u $username > -1; then
	echo "That username already exist"
else
	echo -e "Full Name:"
	read fullname
	echo -e "Password:"
	read  Password
	useradd -C "$fullname" $username
	if id -u $username > -1; then
		echo "User created successfully"
	else
		echo "An error occured while creating user name"
	fi
fi


