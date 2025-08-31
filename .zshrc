alias vim=nvim
alias v=nvim

export EDITOR=nvim
export BAT_THEME=gruvbox-dark
export XDG_SESSION_TYPE="x11"
export ZSH="$HOME/.oh-my-zsh"
export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"

if [ -n "$DISPLAY" ]; then
  if [ -z "$TMUX" ]; then
    tmux
  fi
fi

autoload -Uz compinit
autoload -U colors && colors

compinit -d ~/.config/zsh/.zcompdump

# fish prompt go brrr
PS1="[$fg[blue]%m$fg[white]@$fg[yellow]%n$fg[white]]%{$fg[red]%}[%1~$fg[white]] \$ "

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

set +m
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi
