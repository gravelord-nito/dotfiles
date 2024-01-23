#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias config='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias neofetch='clear && neofetch'
alias ssimurgh='ssh alisa@185.7.212.79'

# theme
eval "$(starship init bash)"

PS1='[\u@\h \W]\$ '
