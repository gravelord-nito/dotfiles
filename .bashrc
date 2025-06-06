#
# ~/.bashrc
#

source ~/.private_bashrc

# aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias config='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias neofetch='clear && neofetch'

# theme
eval "$(starship init bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

export PYTHON_KEYRING_BACKEND=keyring.backends.null.Keyring

# Created by `pipx` on 2025-02-08 22:04:14
export PATH="$PATH:/home/alisa/.local/bin"
