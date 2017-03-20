
                                                                                   LINUX COMMANDS	
rm example.txt	Remove the file
Touch example.txt	Creates a text file
Cat example.txt	Reads the file
Cd	Change directory or take to straight to home location
Rmdir	Remove directory
Mkdir	Make directory
Rm -r	Remove everything under that folder
Man mv	Manual for move command
Top	List of processes
Sudo netstat  -tupln	Deeper inset of what’s going on network
Mkdir –p	Make nested folders eg. Ex/ex1/ex2/here
cp	Copy file
.	Same directory
..	Directory above
Cat	Concatenate 2 files Ex.txt ex1.txt
Mv	example.txt  destination folder/  :move the file to destination folder and Also Renames the files Ex.txt ex2.txt
Pwd 	Print working directory-helpful finding out current location
Ls &ls –l

Ls –a 	List all the files in a directory & list directories along with authorization details
To show hidden files including all
Echo 	Eg:  echo “this” > example.txt will create file in current directory 
Echo	Echo “this line2 “ >> example.txt appends the text in the same file
Sudo	Super user root
Sudo  apt-get update	Check for updates for the software installed
Sudo  apt-get upgrade	Upgrade all 
Sudo apt-cache search  example	To search for specific package
Rwx	Read write and execute authority
r-x	Only read and execute
 Chmod 7or 6 or 4 or 0	To change the rights 7-evrything ||6-RW|| 4-R|| 0-Nothing
Chmod 740 example.txt	Owner can rwx   owners group can r  others nothing
Chown	Change the ownership
Htop	Task manager
Whoami	
Id	
Sudo –i	Become root user
Uname –a	Kernel info, sys info, processor info,
Wc –a	To count no of words and lines in a document 
#ARTHEMATICAL OPERATIONS	#ARTHEMATICAL OPERATIONS
For multiplication(special)	`Expr A \* b`
For other operators normal	Don’t forget to put single reverse quotes with word Expr
For decimal operations	Div = `echo a / b |bc`          use  bc with echo
	
If then else	For example
If mv test.txt test1
Then  echo “hello”
Else 
Echo “failed”
fi

# greater than and lesser than op	
-lt	Lesser than  
-gt	Greater than
Elif	Just like else if
Fi	Ending syntax for if
-ne	Not equal to 
-ge	Greater than equal to
-le	Lesser than equal to
#run checks on files	#run checks on files
-f	Check for files
-d	Check for directories
-c	Check for special characters
-b	Check for images video file
-r –w -x	For read permissions , write permission, execute permissions
How to check	If [  -f $fname ]
Then
Echo “your message”
How  to use AND operator -a	If  [ $num –le 100  –a  $num –ge 50 ]
	
How to count characters/words/lines	
[ Wc –c ]	Count the number of chararcters
[ Wc –l  ]	Count the number of lines
[ Wc –w ]	Count the number of words
	
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	

