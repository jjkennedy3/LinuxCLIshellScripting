# Commands


|   |   |
|---|---|
| **_CREATING, MOVING, COPYING FILES_** |
| mv name.text anothername.txt  | renames file to anothername.txt  |
| mv name.text anothername.txt  | renames file to anothername.txt  |
|  rm example.txt |  Remove a file |
| touch example.txt  |   Creates a text file|
| cat example.txt |  Reads the file |
|  echo " some more text" >> example.txt | appends to existing file  |
| echo " some  text" pipe tee newFile.txt  | tee will display text to console as well as create a new file with text  |
| echo " some more text" pipe tee -a newFile.txt  | tee will display text to console as well as -a append to existing file.  |
| **_COUNTING_** |
| wc -c   someText.txt| counts characters  |
| wc -w  someText.txt| counts words  |
| wc -l someText.txt | counts lines  |
| cat test.txt pipe wc -l  | read and pipe the result to count number of lines   |
| **_FILE DISPLAY COMMANDS_** |
| cat test.txt pipe more  |  for large text files, it helps view the content page by page |
| cat test.txt pipe less  |  for large text files, it helps view the content line by line, j or k to scroll up/down |
| cat test.txt pipe pg  | for large text files, it helps view the content page by page  |
| cat file1.txt file 2.txt > concatinated_file  | Merge data of 2 files together in one file   |
|head -5   |  displays 1st 5 lines |
|tail -5   |  displays last 5 lines |
| **_FILTERS/TEXT PROCESSORS_** |
| cut -c1-2 somefile.txt  | it will cut fist 2 letters of a word in a file  |
| awk '{print $1'} somefile.txt  | prints first column from a file  |
| grep someword test.txt | filters .txt with that word  |
| sort  |to sort a-z  , -r for reverse sort |
|  uniq | removes all duplicates  |
| **_COMPARE FILES_** |
| diff file1.txt file2.txt |    |
| cmp file1 file2|   |
| **_LIST FILES_** |
| ls  |    list files|
|  ls -ltr | list files with -l means long listing with permissions -t sort according to modification time newer first  -r older files listed at top |
|ls -ltr /example/directory/\*sales\*.txt   | searching files with name sales , it's a wildcard search  |
| find /directory/ -iname \*sales\*  | if you're not sure where exactly are these specific files  USE find with wildcard search -i means ignore case sensitivity|
| ls -al   | list all hidden files with directories  |
| ls -R  pipe grep ./ | It will list all directories, -R is recursively  |
| **_DISK USAGE_** |
|  du -skh * pipe sort -nr | it will list all files in kb, -nr numeric sort in reverse order, bigger ones first, du means disk usage, -s is summarize, -h is human readable format, -k is block size   |
| du -skh * pipe sort -nr pipe head -5 | lists only top 5 files  |
| **_GZIP_** |
| gzip filename.txt  | compress your file, original will be deleted  |
| gzip -d   | to decompress    |
| gzip -l  | gives details on compression   |
| gzip -r  | zip all files in a folder inside a folder   |
| vi test.txt | editor which will create a file if one doesn't exists  |
| press i  | for insert mode and then start typing   |
| press esc and then type : wq|  it will quit |
| :q!     | discard typed changes ,quit without saving  |
|  :q | quit without saving  |
|  ESC and then press G | takes you to last line  |
|  press $ | cursor will move to the very end of the line   |
| mail -a file.txt/gz -s "report"  manager@mail.com < /dev/null   |  mail compressed file by email, -s for subject, -a for attachment, don't want this command to return anything so < /dev/null |
| **_TAR FILES_** |
| tar -cvf combined.tar file1.txt file2.txt | combines 2 files into one as .tar   |
| tar -xvf combined.tar file1.txt file2.txt | Extract files to their original format   |
| tar -cvfz allSalesreports.tar.gz sales*.txt | setting new file name as allSalesreports =is the input of all sales files    |
|tar -tf allSalesreports.tar.gz  | -t listing the contents of tar file   |
| **_TRUNCATE_** |
| truncate -s 10 | date will be lost but it will shrink the size to 10 bytes   |
| **_RUN PROCESSES IN BACKGROUND WITHOUT HUNGUP_** |
|nohup test.sh &   | -nohup means  no hangup , & means run in background, keep running backgroud jobs even if user is logged out   |
|jobs -l   | it will  list all background running jobs   |
| **_SHOW AND KILL PROCESSES_** |
|ps -ef   |  shows all processes according to hierarchy |
|ps -ef pipe grep test   | presents a lists which consists of test   |
|kill -9 or -15 pid  | it will kill/terminate the process, -15 means gracefully end the process, -9 means forcefully   |
| **_GET ALL SERVICES AND STATUS_** |
|service --status-all | it will list all services   |
|service servicename status   | status of a service  |
|sudo service servicename start/stop/restart   | it will start, stop or restart our service  |
| **_LISTING HIGH CPU USAGE PROCESSES_** | 
|top   | list the processes taking HIGH CPU usage  |
|top press i   | ignores idle proceses  |
|top -u name   | it will filter processes by that name |
| **_CHECK ENVIRONMENT VARIABLES OR SERVER ENV VARS_** |
|export | shows all environment varaiables of a machine |  
|export pipe grep path   |  it will print PATH variable setting |
|echo $PATH   | it will print path settings  |
|export JAVA_HOME=/usr/bin/jdk  |   |
| **_FTP -copy config file to remote server over FTP_** |
|ftp ftpLink   |it will login to FTP server if you've correct password and username   |
| put or get   | transfer files to or get from server  |
|scp ~/someFile.txt user@remote_host.com:tmp/remote/directory   | scp means secure copy from local machine to remove server dest path (uploading) |
|scp user@remote_host.com:tmp/remote/directory ~/downloadfile.txt   | download from remote server to local machine  |
|   |   |
| **_GET MACHINE UPTIME_** |
| uptime  |  gives machine uptime |
| **_VIEW KERNEL MESSAGES_** | VERY HELPFUL IN DIAGNOSING IN CASE OF DEVICE FAILURE , KERNEL WILL BE AWARE OF IT IN CASES OF MALFUNCTION
| dmesg pipe grep sda | to check if hard disk was directed  |
|dmesg pipe grep -i usb  | info on USB's  |
|dmesg pipe grep -i dma   | info on direct memory access  |
|dmesg pipe grep -i tty   |info on serial ports   |
|dmesg pipe grep -i memory   |info on how much memory we have   |
|dmesg -c   |dmesg buffer is cleared   |
| tail -f /var/log/dmesg  |shows latest info from the bottom as it says tail in command   |
| **_VIRTUAL MEMORY STATISTICS_** | HELPS IDENTIFY PERFORMANCE BOTTLENECKS, ABOUT PROCESSES, PAGING, BLOCK IO, TRAPS, CPU ACTIVITY
|vmstat   | shows memory stats   |
|vmstat -a  | shows active inactive memory   |
|vmstat 1 5  | values will be measured every 1 second for upto 5 times   |
| **_SLOW SLUGGISH SERVER_** | MAIN CAUSES ARE CPU, IO, RAM. NETWORK
|  top |   |
| **_SAR - SYSTEM ACTIVITY REPORTING_** 
| sar  | view CPU stats  |
| sar -r |view RAM stats   |
| sar -b  |view disk stats   |
| sar -F  | view mounted file system stats  |
| sar -n dev  |view network stats   |
| sar -A  |all stats at once   |
| sar -s 20:00:00 -e 20:30:00  |view CPU data from 8pm to 8.30pm   |
| sar -f /var/log/sysstat/sa06  | view stats on 6th day of month  |
| **_IOSTAT_** 
|IT IS A PART OF sysstat PACKAGE  WHICH INCLUDES, sar,iostat,mpstat,pidstat,sadf
|iostat option -c   | CPU usage statistics  |
|iostat option -d   |only the disk I/O statistics   |
|iostat option -n   |displays only the device and NFS statistics   |
|iostat -xz  -l | monitoring input/output device loads  |
|when machine's RAM is being fully utilzed then swap comes into action which results in performance bottlenecks or if you have lot of RAM then you need to figure out which program is suffering   |   |
| Try to figure out which device is having highest IO load  |   |
|iotop  |  just like top gives you info which process is having heavy IO |
| **_LIST OF OPEN FILES_**  |   |
|lsof pipe wc -l  | lines shows how many open files  |
|lsof -u root   | filter open files by the user   |
| lsof -i tcp:22  | filter using port numbers  |
| kill -9 'Lsof -t -u username| kill processes of specific user   |
|   |   |
|   |   |
|   |   |
|   |   |
|   |   |
|   |   |
|   |   |
|   |   |
|   |   |
|   |   |
|   |   |
|   |   |
|   |   |
|   |   |
|   |   |
|   |   |
|   |   |
|   |   |
|   |   |
|   |   |
|   |   |
