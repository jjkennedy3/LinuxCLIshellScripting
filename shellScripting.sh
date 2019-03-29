#! /bin/bash

read -p "Enter a number : " num
 	
 	if ((num == 10)); then
 		echo "Your number equals 10"
 	fi
 	
 	if ((num > 10)); then
 		echo "It is greater then 10"
 	else
 		echo "It is less then 10"
 	fi



# check if file test operators / exists module

#-e to have te input from user in same line 
echo -e "enter the name of the file : \c"
read filename

if [-e $filename]
#-e stands for exists if file exists  
#-d for directory  
#-f for regular file  
#-b for block special file
then
	echo "$filename found"
	else
	echo "$filename not found"
fi







#Logical AND operator
age=25

if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
then
	echo " valid age"
	else
	echo "age not valid"


#-a for AND
	if [ "$age" -gt 18 -a "$age" -lt 30 ]
	then
		echo " valid age"
		else
		echo "age not valid"

#another way
if [[ "$age" -gt 18 && "$age" -lt 30 ]]
	then
		echo " valid age"
		else
		echo "age not valid"







#Logical OR operator
if [ "$age" -gt 18 ] || [ "$age" -lt 30 ]
then
	echo " valid age"
	else
	echo "age not valid"

#another way
if [[ "$age" -gt 18 || "$age" -lt 30 ]]
	then
		echo " valid age"
		else
		echo "age not valid"

#another way
if [ "$age" -gt 18 -o "$age" -lt 30 ]
	then
		echo " valid age"
		else
		echo "age not valid"