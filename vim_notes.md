This page will contain the relevant link for VIM editor

# .vimrc

- sane-defaults/home/.vimrc at master · nickserv/sane-defaults, sane setting for vim 

# Plugin store

- Vim Awesome , website containing vim plugin 

# Recommended plugins

- fugitive.vim - Vim Awesome , git command plugin

- vim-gitgutter - Vim Awesome, A Vim plugin which shows a git diff in the sign column. It shows which lines have been added, modified, or removed

- ctrlp.vim - Vim Awesome, Full path fuzzy file, buffer, mru, tag, ... finder for Vim.

- taglist.vim - Vim Awesome, The "Tag List" plugin is a source code browser plugin for Vim and provides an overview of the structure of source code files and allows you to efficiently browse through source code files for different programming languages. The github repo has the latest versions

# Vim customs function can be created, 
- Learn Vimscript the Hard Way , on line version of the book which give detailed info of writing function 

- Debugging Vim by example — David Winterbottom

# You tube links

- How to Do 90% of What Plugins Do (With Just Vim)

- Vim Tips I Wish I Knew Earlier

- Mastering the Vim Language 

- Vimscript Tutorial: Hello world

# Misc

- [Vim-Katas](https://github.com/adomokos/Vim-Katas/tree/master/exercises) , a series of excercise for parctising movment

  
# Examples 


-  Key binding
```
map <F12> :!python ./test.py <CR>	-  vim : to map a key for excutions
```

-  To remove the ^M characters at the end of all lines in vi.  
```
:%s/^V^M//g
```
    - The ^v is a CONTROL-V character and ^m is a CONTROL-M. When you type this, it will look like this %s/^M//g

- To open muliple files in vim   	

```
cat file | xargs vim
```

-  To delete a range of buffer	
```
:N,Mbdelete[!] , delete a range of buffer	
```

- Do a deep directory search for the files with extension '.cpp' and open the files	
:n **/*.cpp  
	
-  For reading the shell command and collect the output to the vim buffer	
```
r ! ls -1 /home/user/directory | sort -r	
```

-  Bashrc default editor setting	
```
export EDITOR='vim'	
```
-  Reload active VIMRC without quitting the vim	
```
so $MYVIMRC	
```

-  Command combo for replacing in multiple file	
```
arg ./src/**/*.cpp	
argdo %s/open/cc\.cOpen/gc	
```

-  Moving across tabs	
```
gt            go to next tab	
gT            go to previous tab	
{i}gt         go to tab in position i	
Ctrl-PgDn     go to next tab	
Ctrl-PgUp     go to previous tab
```