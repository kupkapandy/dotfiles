if status is-interactive
  # Commands to run in interactive sessions can go here
end

alias vim='nvim'
alias nano='nvim'
alias v='nvim'
alias q='exit'

set -x EDITOR nvim
set -x MANPAGER "nvim +Man!"
set -x TERM "screen-256color"
set -g fish_vi_mode_display none

clear

if test -n "$DISPLAY"
  if test -z "$TMUX"
    tmux
  end
end

if test -z "$DISPLAY"
  clear
end

function fish_prompt
  set_color green
  printf "["
  printf "%s" (prompt_pwd)
  printf "]"

  set_color normal
  printf " \$ " $USER
end

function fish_greeting; end
export PATH="$HOME/.cargo/bin:$PATH"
