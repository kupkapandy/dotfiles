alias vim=nvim
alias n=nvim
alias v=nvim
alias neofetch=fastfetch

export EDITOR=nvim

export BAT_THEME=gruvbox-dark

# Start tmux if not already running
if [ -z "$TMUX" ]; then
  tmux
fi

autoload -Uz compinit
compinit -d ~/.config/zsh/.zcompdump

if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="geoffgarside"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

set +m

# zsh-autosuggest config
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi
