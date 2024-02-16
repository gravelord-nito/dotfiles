ZDOTDIR=${ZDOTDIR:-$HOME/.config/zsh}

for file in $ZDOTDIR/functions/*; do
  if [ -f "$file" ]; then
    source "$file"
  fi
done

repos=(
  zsh-users/zsh-completions
  rupa/z

  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-history-substring-search
  zsh-users/zsh-autosuggestions

  romkatv/zsh-defer
  olets/zsh-abbr
)

plugin-load $repos

eval "$(starship init zsh)"
