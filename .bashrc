#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux attach-session -t 0 || tmux new-session -s 0
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export PATH=/home/ricar/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/var/lib/flatpak/exports/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
export PATH=/home/ricar/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/var/lib/flatpak/exports/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl

# Set up fzf key bindings and fuzzy completion
 eval "$(fzf --bash)"

# Following line was automatically added by arttime installer
export MANPATH=/home/ricar/.local/share/man:$MANPATH

# Open nvim when using vim, vi
alias 'vim'='nvim'
alias 'vi'='nvim'
alias 'v'='nvim'

# Set default editor to nvim
export EDITOR=nvim

# Git diff in nvim
alias vimdiff='nvim -d'
alias vdif='nvim -d'

# Open anything with xdg-open
alias 'open'='xdg-open'
alias 'o'='xdg-open'


