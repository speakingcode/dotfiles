
# Kiro CLI pre block. Keep at the top of this file.
[[ -f "${HOME}/.local/share/kiro-cli/shell/bashrc.pre.bash" ]] && builtin source "${HOME}/.local/share/kiro-cli/shell/bashrc.pre.bash"

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

# bash Configuration
export HISTSIZE=100000
export HISTFILESIZE=100000

# append history immediately instead of overwriting on exit
shopt -s histappend

# save and reload history after every command prompt
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# set timestamp format (YYYY-MM-DD HH:MM:SS)
export HISTTIMEFORMAT="%F %T "

# General Exports

## App-selection
export EDITOR="vim"
export VISUAL="vim"

# Add ~/.local/bin to PATH (for kiro-cli)
export PATH="$PATH:$HOME/.local/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Kiro CLI post block. Keep at the bottom of this file.
[[ -f "${HOME}/.local/share/kiro-cli/shell/bashrc.post.bash" ]] && builtin source "${HOME}/.local/share/kiro-cli/shell/bashrc.post.bash"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
