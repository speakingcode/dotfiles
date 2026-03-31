#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases

# General & Navigation Aliases

# Clears the terminal screen.
alias c='clear'

# Provides a detailed, human-readable, color-coded listing of
# all files and directories, including hidden ones.
alias l='ls -lahF --color=auto'

# Shows a detailed, human-readable listing (without hidden files).
alias ll='ls -lh'

# Lists all files, including hidden ones (dotfiles).
alias la='ls -A'

# Quickly navigate to the parent directory.
alias ..='cd ..'

# Navigate two levels up.
alias ...='cd ../..'

# Shows command history.
alias h='history'

# Reloads the Bash configuration file after changes without needing to restart the terminal.
alias reload='source ~/.bashrc'

# Shows disk space usage in human-readable format.
alias dfh='df -h'

# Shows disk usage of the current directory's contents in human-readable format.
alias duh='du -h --max-depth=1'

# File Management Aliases
# Prompts for confirmation before overwriting an existing file.
alias cp='cp -i'

# Prompts for confirmation before moving and potentially overwriting an existing file.
alias mv='mv -i'

# Prompts once before removing many files or when removing recursively; prevents removing root.
alias rm='rm -I --preserve-root'

# Creates parent directories as needed and prints each directory created.
alias mkdir='mkdir -pv'

# Shortcut to extract common gzipped tar archives.
alias untar='tar -zxvf'

# Git Aliases
# Check the repository status.
alias gs='git status'

# Add file changes to the staging area.
alias ga='git add'

# Commit changes with a message (usage: gc "message").
alias gc='git commit -m'

# List branches.
alias gb='git branch'

# Switch branches or restore working tree files.
alias co='git checkout'

# Pull the latest changes from the remote.
alias gpl='git pull'

# Push committed changes to the remote repository.
alias gps='git push'

# grep
alias grep='grep --color=auto'

# terminal config
PS1='[\u@\h \W]\$ '

# dotfiles/config
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
