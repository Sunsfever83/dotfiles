
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias fastfetch='fastfetch -l ARCHlabs --logo-color-1 red --logo-color-2 Bright_Yellow -s OS:Kernel:Uptime:DE:WM:WMTheme:CPU:GPU:Memory:DateTime'
alias emptytrash='rm -rf ~/.local/share/Trash/files/* ~/.local/share/Trash/info/*'
alias emptytrash='rm -rf ~/.local/share/Trash/files/* ~/.local/share/Trash/info/*'
