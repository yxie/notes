# Basic commands

Download the repo from github:

`git clone <address>`

Show the commit history:

`git log`

`git log --stat`

`git log --graph --oneline <branch_names>`

Show the difference between two commits:

`git diff <first_commit_id> <second_commit_id>`

Show the difference between working directory and staging area

`git diff`

Show the difference between staging area and the most recent commit

`git diff --staged`

Return to some commit point to debug

`git checkout <commit_id>`

# Git configuration

For mac:

```
git config --global core.editor "'/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl' -n -w"
git config --global push.default upstream
git config --global merge.conflictstyle diff3
```

# Repository

Initialize a Git repo for a folder

`git init`

Check if folder is a repo (also shows which files have changed)

`git status`

Add files to staging area before commit

`git add <file_name>`

Commit changes and add commit messages

`git commit`

`git commit -m "message"`

Discard the changes in either the working directory or the staging area

`git reset --hard`

# Branch

Show all local branches

`git branch`

Create a new branch

`git branch <branch_name>`

Checkout another branch

`git checkout <branch_name>`

merges all the specified branches into the currently checked out branch,

`git merge <branch1> <branch2>...`

Show changes introduced by a commit when compared with its parent

`git show <commit_id>`

Delete branch label

`git branch -d <branch_name>`

# Github/remote

Show remote

`git remote `

`git remote -v` (verbose)

Add a remote and name it *origin*

`git remote add origin <repo_URL>`

Push changes to remote

`git push origin master`

Pull changes from Github to local repo

`git pull`

# Keep a fork up-to-date

1. Clone your fork:
```
git clone git@github.com:YOUR-USERNAME/YOUR-FORKED-REPO.git
```

2. Add remote from original repository in your forked repository:
```
cd into/cloned/fork-repo
git remote add upstream git://github.com/ORIGINAL-DEV-USERNAME/REPO-YOU-FORKED-FROM.git
git fetch upstream
```

3. Updating your fork from original repo to keep up with their changes:
```
git pull upstream master
```
