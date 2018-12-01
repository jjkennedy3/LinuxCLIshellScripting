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
| :q!     | discard typed chages ,quit without saving  |
|  :q | quit without saving  |
|   |   |
|   |   |