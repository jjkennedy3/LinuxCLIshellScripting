# Commands


|   |   |
|---|---|
|  rm example.txt |  Remove a file |
| Touch example.txt  |   Creates a text file|
| Cat example.txt |  Reads the file |
| ls  |    list files|
|  ls -ltr | list files with -l means long listing with permissions -t sort according to modification time newer first  -r older files listed at top |
|ls -ltr /example/directory/\*sales\*.txt   | searching files with name sales , it's a wildcard search  |
| find /directory/ -iname \*sales\*  | if you're not sure where exactly are these specific files  USE find with wildcard search -i means ignore case sensitivity|
| ls -al   | list all hidden files with directories  |
| ls -R  pipe grep ./ | It will list all directories, -R is recursively  |
|  du -skh * pipe sort -nr | it will list all files in kb, -nr numeric sort in reverse order, bigger ones first, du means disk usage, -s is summarize, -h is human readable format, -k is block size   |
| du -skh * pipe sort -nr pipe head -5 | lists only top 5 files  |
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
| cat test.txt pipe wc -l  | read and pipe the result to cout number of lines   |
| cat test.txt pipe more  |  for large text files, it helps view the content page by page |
| cat test.txt pipe pg  | for large text files, it helps view the content page by page  |
| cat file1.txt file 2.txt > concatinated_file  | Merge data of 2 files together in one file   |
| mail -a file.txt/gz -s "report"  manager@mail.com < /dev/null   |  mail compressed file by email, -s for subject, -a for attachment, don't want this command to return anything so < /dev/null |
| tar -cvf combined.tar file1.txt file2.txt | combines 2 files into one as .tar   |
| tar -cvfz allSalesreports.tar.gz sales*.txt | setting new file name as allSalesreports =is the input of all sales files    |
|tar -tf allSalesreports.tar.gz  | -t listing the contents of tar file   |
|nohup test.sh &   | -nohup means  no hangup , & means run in background, keep running backgroudn jobs even if user is logged out   |
|jobs -l   | it will  list all background running jobs   |
|ps -ef   |  shows all processes according to hierarchy |
|ps -ef pipe grep test   | presents a lists which consists of test   |
|kill -9 or -15 pid  | it will kill/terminate the process, -15 means gracefully end the process, -9 means forcefully   |
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
|   |   |
