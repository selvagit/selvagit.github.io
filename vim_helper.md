# vim examples     
```
map <F12> :!python ./test.py <CR>	# vim : to map a key for excutions
```
# To remove the ^M characters at the end of all lines in vi,	
```
:%s/^V^M//g
```
# The ^v is a CONTROL-V character and ^m is a CONTROL-M. When you type this,	
# it will look like this %s/^M//g	

```
cat file | xargs vim
```
# vim to delete a range of buffer	
```
:N,Mbdelete[!] , delete a range of buffer	
```

:n **/*.cpp  do a deep directory search for the files with extension '.cpp' and open the files	
	
# vim for reading the shell command and collect the output to the vim buffer	
```
r ! ls -1 /home/user/directory | sort -r	
```

# bashrc default editor setting	
```
export EDITOR='vim'	
```
# reload active VIMRC without quitting the vim	
```
so $MYVIMRC	
```

# command combo for replacing in multiple file	
```
arg ./src/**/*.cpp	
argdo %s/open/cc\.cOpen/gc	
```

# vim moving across tabs	
```
gt            go to next tab	
gT            go to previous tab	
{i}gt         go to tab in position i	
Ctrl-PgDn     go to next tab	
Ctrl-PgUp     go to previous tab
```