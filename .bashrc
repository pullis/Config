#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Enable color support and handy aliases
eval $(dircolors /usr/share/dircolors/dircolors.256dark) # Directory colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias tmux_='tmux -2u a || tmux -2u' # Attach to tmux session if running, otherwise create new session
alias dfc='dfc -d -T -p /media,/, -s' # Show used size, file system type, show only "/" & "/media" , sum the total usage 
alias nightly='~/firefox/nightly/firefox -p test --no-remote'
alias ffbeta='~/firefox/beta/firefox'
alias screenfetch='screenfetch -D 'Antergos'' 
alias rm='trash-put' # Move files to trash to prevent accidentally removing stuff, requires trash-cli
alias remove='rm' # rm = trash, remove = rm
alias ll='ls -larth' # All files, "long" with reverse time sorting and human readable sizes
alias inxi='inxi -GMISsv 1 -x'

# Command prompt
PS1='[\u@\h \W]\$ '

# Set Shell options to increase functionality
shopt -s autocd # Enable changing directory without cd
shopt -s cdspell # Spelling correction for cd
shopt -s dirspell # Spelling correction when tab-completing directories
shopt -s checkwinsize # Adjust text to window size after commands
shopt -s dirspell # Spelling correction for dirs
shopt -s dotglob # Enable globbing for dotfiles
shopt -s extglob # Extended globbing
shopt -s globstar # ZSH-like ** globbing (recursive dir match)
shopt -s histappend # Append to history, don't overwrite
shopt -s histreedit # Re-edit failed history substitutions
shopt -s nocaseglob # Ignore cases for globbing filenames
export TERM=xterm-256color # for common 256 color terminals (e.g. gnome-terminal)
export HISTCONTROL=ignoreboth # Ignore duplicate/blank lines in history
export HISTSIZE=100000 # 100K command in history
export LC_COLLATE="C" # Change sorting to list dotfiles first
export EDITOR='/usr/bin/vim' # Use vim for light edits
export VISUAL='/usr/bin/vim' # Use vim for heavy edits
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r" # Remember history between terminals
