alias vim=nvim
alias n=nvim
alias v=nvim
alias neofetch=fastfetch
alias download='yt-dlp -x --audio-format mp3 --audio-quality 0'

export EDITOR=nvim
export BAT_THEME=gruvbox-dark
export ZSH="$HOME/.oh-my-zsh"
export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"

if [ -z "$TMUX" ]; then
  tmux
fi

autoload -Uz compinit
compinit -d ~/.config/zsh/.zcompdump

autoload -U colors && colors


PS1="%{$fg[green]%}%~%{$fg[red]%} %{$reset_color%}$%b "

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
