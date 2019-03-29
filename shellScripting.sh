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

if [ -e $filename ]
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





# Arthematic operations
num1=20
num2=5
echo $(( num1 + num2 ))
echo $(( num1 % num2 ))
#or 
echo $(expr $num1 - $num2 )
echo $(( num1 + num2 ))

echo "20.5+5" | bc
echo "scale=2;20.5/5" | bc  #scale means upto 2 decimal places
echo "scale=2;sqrt($num)" | bc -l #scale means upto 2 decimal places
echo "scale=2;3^3" | bc -l #-l for library


# SWITCH CASE

vehicle=1

case "$vehicle" in
	"car")
		echo "$vehicle"
	;;
	"van")
		echo "$vehicle"
	;;
	*)
		echo "default"
	;;
esac


#using REGEX
read value
case "$value" in
	[a-z] )
		echo "$value"
	;;
	[A-Z] )
		echo "$value"
	;;
	*)
		echo "default"
	;;
esac





#ARRAYS
os=('ubuntu' 'windows' 'kali')
os[6]='mac'

unset os[2]  # remove an element
echo "${os[@]}"  #  \\ @ stands for all printing all elements 
echo "${os[1]}"
echo "${os[!@]}" # \\ !@ means oppposite means print all indexes ,  print the indexes of the array  
echo "${#os[@]}"  # print the length of the array  




#while loops
n=1
while [ $n -le 10 ]; do
		echo "$n"
		n=$(( n+1 ))
done
