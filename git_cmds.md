
```	
git clean -f -n	
git status  | grep -v "\(/$\)"	
git log --author=selva --name-only  --since="2015-09-21" | uniq | awk '!(/commit/ || /Author/ || /Date/ || /Added/ || /Fixed/ || /Merge/|| /^$/  )'	
git rev-parse HEAD	
git ls-remote --heads origin develop	
git log --author=selva --name-only  --since="2015-09-21" > ./selva_change_file.txt	
git format-patch -1 a8c59c6f42815423f7294515e02ae744ea6913d8	
```
```	
#git reset is a literally "undo" of git add - it removes the changes from staged area.	
	
git branch -a	# list all the branch
	
git branch -r	# list all the remote branch
	
git ls-remote --heads origin	#list the head commit of the remote branches
	
git reset --hard	# current changes are revert
	
git clean -n	# list the new files added
	
git clean -f	# remove all new files added
	
git clean -f -d	# remove all new directory added
	
git log --all -p ./sys/time/test.cpp	# get log of a single file with code changes
	
git diff -w sys/time/test.h	# ignores the eol marker windows in diff
	
git stash show -p stash@{0}3	# diff of the current code with the stash
	
git diff mybranch master -- myfile.cs	#find the file diff across two different branch
	
git diff --name-only HEAD~20..HEAD ./src/	#To show all files changed in the last 20 commits, without any commit information
	
git log -p -10 ./src	#To show all files changed in the last 20 log for a particular directory
```

```
git apply --stat fix_empty_poster.patch	#git apply the patch
git apply --check fix_empty_poster.patch	
git apply  ./fix_empty_poster.patch	
git am  ./fix_empty_poster.patch	
```

```	
git am --signoff < fix_empty_poster.patch	#git am allows you to sign off an applied patch
	
git format-patch master --stdout > fix_empty_poster.patch	# This will create a new file fix_empty_poster.patch with all changes from the current (fix_empty_poster) against master
	
git reset foo/bar.txt	#(error: path … is unmerged) You are meant to reset first, to unstage the file, then checkout, to revert local changes.
git checkout foo/bar.txt	
	
git diff origin/main ./test.xml	
	
git status | awk '{print $3}' | grep -v -E "currently|git|added|not" | xargs -n1 git checkout --	# for checkout multiple files
	
git status | grep modified | awk '{print $3 }' | xargs git add	# add multiple file for commit operation
git status | grep -e "modified.*\(.cpp\|.h\|.c$\)" | awk '{ print  $3 }' | xargs git add	
```	

```	
vim `git status | grep -e "modified.*cpp" | awk '{print $3}' '	# to open all the modified
```

```	
git format-patch	
git send-email	
```	

```
git stash apply stash@{0}	# exmaple of how to apply stash
git stash	
git stash delete stash@{0}	
git stash list	
```

```
git branch -d the_local_branch	# example for deletion of the local branch , the branch being delete should not be current working  branch
		
$git format-patch HEAD~7	#create patch for last 7 commit
	
git reset --soft HEAD~1	#If you want to "uncommit", erase the last commit message, and put the modified files back in staging
	
git reset HEAD  sys/test.cpp	# to remove the file from the added file list 
	
git reset <file>	#You can undo git add before commit with which will remove it from the current index (the "about to be committed" list) without changing anything else.
	
git reset	#You can use without any file name to unstage all due changes. This can come in handy when there are too many files to be listed one by one in a reasonable amount of time.
```	
	
```	
git checkout .	If you want to revert changes made to your working copy, do this:
git reset	If you want to revert changes made to the index (i.e., that you have added), do this. Warning this will reset all of your unpushed commits to master!:
git revert <commit 1> <commit 2>	If you want to revert a change that you have committed, do this:
git clean -f	If you want to remove untracked files (e.g., new files, generated files):
git clean -fd	Or untracked directories (e.g., new or automatically generated directories):
```

```
git log --diff-filter=D --summary | less	"# a command to find the files that have been delete in the git repo, beautiful command 
every body should know"
	
git rebase -i HEAD~3	to rebase
git status | grep -E rej$  | awk '{print $2}' > ./vim.list ; vim -p `cat ./vim.list`	to filter file and open in vim as a list of files
git status | grep -E \(orig$\)\|\(rej$\) | awk '{print $2}' | xargs rm	#delete the orig and rej files
	
git log --diff-filter=D --summary | less	"# a command to find the files that have been delete in the git repo, beautiful command 
every body should know"
```	
	
	