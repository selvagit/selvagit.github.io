# screen session	
Ctrl a c -> Creates a new screen session so that you can use more than one screen session at once.	
Ctrl a n -> Switches to the next screen session (if you use more than one).	
Ctrl a p -> Switches to the previous screen session (if you use more than one).	
Ctrl a d -> Detaches a screen session (without killing the processes in it - they continue).	
Ctrl a k -> Kill the current screen.	
screen -ls -> a list of your current screen sessions	
screen -r  2477.pts-0.server1 -> reconnect to session 2477.pts-0.server1	

# remove the screen session	
rm -rf /var/run/screen/selva/*	

# tmux 
tmux ls
tmux kill-session -t 0
tmux attach -d