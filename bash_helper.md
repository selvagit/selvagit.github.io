# grep commands
grep -i diff ./temp.txt | awk '{print $3}' | sed  's/a/\./' > diff_file.txt ; vim $(cat diff_file.txt)	for getting the diff file
	
	


# find examples	
find /home/you -iname "*.txt" -mtime -60 -print	
find ./ -maxdepth 1 -type d	
find -maxdepth 1 -type d -ls;	

find ./ -name "*.o" -exec nm {} \; | grep handler 	#method to find a particular symbol is present in obj file
find ./ -iname *.cpp -exec grep -Hn -i dispatch {} \;	
find ./ -iname '*.h' -o -iname '*.cpp' |xargs  grep -Hn -i dispatch >dump.txt	
	
find -amin -$(bc <<< 60*10) -iname *.xml	# for finding the file which changed in past 10 hours

# for find the a partiuclar class / obj being used	
find ./sys/comm/ -iname *.cpp -o -iname *.h | grep -v -e \/nalyzer\/ -e \/sample\/ | xargs grep -w -n -i "new" -C 5 > ../services.txt	

# command to replace new line 
perl -pi -e 's/\r\n/\n/g' test.cpp	

# process mangement 
ps xf -u selva	#list based on the parent process id for a given user
	
ps -p 28671 -L -o pid,tid,psr,pcpu	#list based core utilization and core number based on a process id
	
for i in `ps aux | grep ssh | grep -v grep | awk {'print $2'}` ; do kill $i; done	#Kill any lingering ssh processes	
	
mpstat -P ALL 1	# shows how much each core is busy and it updates automatically each second.
	
iostat -h -p 5	# shows iostat in human readable format with period of 5 seconds
	
watch -n 5 'ps xf -u nemasis'	# shows process tree for a given user

ps -fp $(pgrep -u user1)	
	
ps -fp $(pgrep -u user1) | grep -i ut_runner	
	
my_pid=$(ps -fp $(pgrep -u user1) | grep -i ut_runner | grep -v grep | awk '{print $2}' ) ; ls -l /proc/$my_pid/fd	

# to find the files opened by a process in linux, process id need to be given	
ls -l /proc/19454/fd
		
# screen session	
Ctrl a c -> Creates a new screen session so that you can use more than one screen session at once.	
Ctrl a n -> Switches to the next screen session (if you use more than one).	
Ctrl a p -> Switches to the previous screen session (if you use more than one).	
Ctrl a d -> Detaches a screen session (without killing the processes in it - they continue).	
Ctrl a k -> Kill the current screen.	
screen -ls -> a list of your current screen sessions	
screen -r  2477.pts-0.server1 -> reconnect to session 2477.pts-0.server1	
	
# tcpdump fragmentation file filter	
tcpdump -i eth0 'ip[6:2] & 0x3fff != 0x0000' -w file.dat # donot redirect the file that file cannot be opened by wireshark	
tcpdump -i eth0 host 192.168.1.177 -w working.dat	
tcpdump -i eth0 host 192.168.1.177 -w working.dat	
	

# vnc server details	
vncserver -geometry 1920x1200	
vncserver -geometry 1600x900 # to run a session	
vncserver -kill :41	
	
# to list vnc session	
pgrep -fl  vnc	
	
	
# list all files used by any process in the current dir , every 15 seconds	
watch -n 15 "lsof +D ./"	
	
# to set a ethernet interface for a particular size	
ifconfig eth1 mtu 9000 up	
	
# indent	
indent -bbb -nprs -l120 -bli0 -i3 -nut -sob -bap -bbo -fca -lps ./LTE_RRM_CHM_Controller.c && vim ./LTE_RRM_CHM_Controller.c	
	
# valgrid commands	
valgrind --leak-check=yes --track-origins=yes --leak-check=full --show-reachable=yes --db-attach=yes --freelist-vol=2000000 --log-file=./memleak.txt -v ./demo ./gtf	
	
valgrind --leak-check=yes --track-origins=yes --leak-check=full --show-reachable=yes --log-file=./memleak.txt -v ./demo	
	
valgrind --leak-check=yes --track-origins=yes --leak-check=full --show-reachable=yes --log-file=./memleak.txt -v ./enb	
	
# to download a website	
wget -r -l 0 -U Mozilla -t 1 -nd -A pdf "http://2013.oshwa.org/archives/" -e robots=off --limit-rate=100	
	
# to set the arguments to gdb, when a binary is given as	
# input it does not consider the command line argument	
set args -k3 caesar.cpp out.txt	
	
# finding os version	
lsb_release -a	
	
# mirror a website use the command	
wget --mirror --convert-links --adjust-extension --page-requisites --no-parent -w 5 http://fs1.rma.lan/webshare/LTE_Standards/5G/	

# core pattern
sysctl kernel.core_pattern	
echo "/media/userdata/core.%e.%p.%h.%t" > /proc/sys/kernel/core_pattern	
	
# bash questions    
find that file with complex criteria and output formatting: find	
Run a quick script: perl -e and perl -pi -e	
Fake a file's modification time: touch	
Using hexdump with custom formatting	
What's in that executable? ldd / objdump (disassembly)	
Create a custom timestamp: date (with formatting)	
Fetch that file from www: wget	
Internet plumbing: nc / redirecting to /dev/tcp	
Using ssh for port forwaring (fake your world position)	
Check that you're not running out of inodes: du -i	
Who's opening which files? lsof / strace	
What ports are open? netstat -a -n	
Munching a lot of text: cat / tac/ head / tail -f / sort / sort -n (together with du -s)	
Mounting an file image: fdisk -fu / mount -o loop	
	
# How to interrupt a Vim command taking too much time?	
You can interrupt it sending SIGINT (CTRL+C).	
	
killall -SIGSEGV sleep	
	
grep -rl IPULOG_INFO ./pkg/ | xargs sed -i 's/INFO/TRACE/g'	
	
tr -cd '\11\12\15\40-\176' < file-with-binary-chars > clean-file	
	
gdb --args ./out/ut/ut_runner --gtest_filter=MessageQueueTest.*	
	
wget --mirror --convert-links --adjust-extension --page-requisites --no-parent -w 5 http://fs1.rma.lan/webshare/LTE_Standards/5G/	
	
# remove the screen session	
rm -rf /var/run/screen/selva/*	
	
wget --mirror --convert-links --adjust-extension --page-requisites --no-parent -w 5 http://data.ceh.vn/Ebook/ebooks.shahed.biz/OS/LINUX/ ./	
	
readelf -a ./exec	