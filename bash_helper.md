#  grep commands

-  for getting the diff file
```
grep -i diff ./temp.txt | awk '{print $3}' | sed  's/a/\./' > diff_file.txt ; vim $(cat diff_file.txt)	
```
 -  list all the files which contains "INFO" and replace with "TRACE"
```
grep -rl INFO ./temp/ | xargs sed -i 's/INFO/TRACE/g'	
```


#  find examples	

 -  find files modified with last 60 minutes 
```
find /home/you -iname "*.txt" -mtime -60 -print	
```

-  list all directory at level 1 
```
find ./ -maxdepth 1 -type d	
```

-  list the contents of directory at level 1 
```
find -maxdepth 1 -type d -ls;	
```

-   method to find a particular symbol is present in obj file
```
find ./ -name "*.o" -exec nm {} \; | grep handler 	
```	

-   search for a string in a set of files 
```
find ./ -iname *.cpp -exec grep -Hn -i dispatch {} \;	
find ./ -iname '*.h' -o -iname '*.cpp' |xargs  grep -Hn -i dispatch >dump.txt	
```	

-   for finding the file which changed in past 10 hours 
```
find -amin -$(bc <<< 60*10) -iname *.xml	
```

-   for find the a partiuclar class / obj being used	
```
find ./sys/comm/ -iname *.cpp -o -iname *.h | grep -v -e \/nalyzer\/ -e \/sample\/ | xargs grep -w -n -i "new" -C 5 > ../services.txt	
```

#  process mangement

-   list based on the parent process id for a given user
```
ps xf -u selva	
```	

-   list based core utilization and core number based on a process id
```
ps -p 28671 -L -o pid,tid,psr,pcpu	
```

-   Kill any lingering ssh processes	
```
for i in `ps aux | grep ssh | grep -v grep | awk {'print $2'}` ; do kill $i; done	
```

-   shows how much each core is busy and it updates automatically each second.
```
mpstat -P ALL 1	
```

-   shows iostat in human readable format with period of 5 seconds
```
iostat -h -p 5	
```

-   shows process tree for a given user
```
watch -n 5 'ps xf -u nemasis'	
```

-   show processs of a user 
```
ps -fp $(pgrep -u user1)	
```

-   search for a processs of a user 
```
ps -fp $(pgrep -u user1) | grep -i ut_runner	
```

-   list all the fd a process for the user1 
```
my_pid=$(ps -fp $(pgrep -u user1) | grep -i ut_runner | grep -v grep | awk '{print $2}' ) ; ls -l /proc/$my_pid/fd	
```

-   to find the files opened by a process in linux, process id need to be given	
```
ls -l /proc/19454/fd 
```	

-  list all files used by any process in the current dir, every 15 seconds
```	
watch -n 15 "lsof +D ./"
```

#  tcpdump fragmentation file filter	

```
tcpdump -i eth0 'ip[6:2] & 0x3fff != 0x0000' -w file.dat -  donot redirect the file that file cannot be opened by wireshark	
tcpdump -i eth0 host 192.168.1.177 -w working.dat	
tcpdump -i eth0 host 192.168.1.177 -w working.dat	
```

#  vnc server details	
```
vncserver -geometry 1920x1200	
vncserver -geometry 1600x900 -  to run a session	
vncserver -kill :41	
```

# misc
-  to list vnc session	
```
pgrep -fl  vnc	
```	

-   to set a ethernet interface for a particular size	
```
ifconfig eth1 mtu 9000 up	
```

-   indent	
```
indent -bbb -nprs -l120 -bli0 -i3 -nut -sob -bap -bbo -fca -lps ./roller.c && vim ./roller.c	
```

-   valgrid commands	
```
valgrind --leak-check=yes --track-origins=yes --leak-check=full --show-reachable=yes --db-attach=yes --freelist-vol=2000000 --log-file=./memleak.txt -v ./demo ./gtf	
	
valgrind --leak-check=yes --track-origins=yes --leak-check=full --show-reachable=yes --log-file=./memleak.txt -v ./demo	
	
valgrind --leak-check=yes --track-origins=yes --leak-check=full --show-reachable=yes --log-file=./memleak.txt -v ./enb	
```

-   gdb
```
gdb --args ./t_runner --gtest_filter=est.*	
```

-   to set the arguments to gdb, when a binary is given as input it does not consider the command line argument	
```
set args -k3 caesar.cpp out.txt	
```

-  finding os version	
```
lsb_release -a	
```

-  to download a website	
```
wget -r -l 0 -U Mozilla -t 1 -nd -A pdf "http://2013.oshwa.org/archives/" -e robots=off --limit-rate=100

wget --mirror --convert-links --adjust-extension --page-requisites --no-parent -w 5 http://test/	
		
wget --mirror --convert-links --adjust-extension --page-requisites --no-parent -w 5 http://data.ceh.vn/Ebook/ebooks.shahed.biz/OS/LINUX/ ./	
```

-  core pattern
```
sysctl kernel.core_pattern	
echo "/media/userdata/core.%e.%p.%h.%t" > /proc/sys/kernel/core_pattern	
```

-  meta character clean up 
```	
tr -cd '\11\12\15\40-\176' < file-with-binary-chars > clean-file	
perl -pi -e 's/\r\n/\n/g' test.cpp
```	

-  reading the elf file
```
readelf -a ./exec	
```