#      _               _              
#     | |__   __ _ ___| |__  _ __ ___ 
#     | '_ \ / _` / __| '_ \| '__/ __|
#    _| |_) | (_| \__ \ | | | | | (__ 
#   (_)_.__/ \__,_|___/_| |_|_|  \___|
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Shell options
# set -o vi

shopt -s cdable_vars
shopt -s autocd
shopt -s cdspell
shopt -s dirspell
shopt -s dotglob
shopt -s extglob
shopt -s no_empty_cmd_completion
shopt -s nocaseglob

# Random Aliases
alias neko="cat"
alias dot="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias :q="exit"

# Random Exports
export EDITOR=vi
export TERMINAL=kitty
export MOZ_ENABLE_WAYLAND=1

# GNU Specific Exports
ls --version 2>&1 | grep -q GNU
if [ $? == 0 ]; then
	alias ls="ls --color=auto"
else
	export CLICOLOR=true
fi

# Set Prompt
source ~/.config/kanji.sh
if [ ! -z $SSH_TTY ]; then
	export PS1="\[\e[107m\e[31m\] • \[\e[m\]\[\e[01;31m\] \$NIHON \[\e[00;37m\]\w\[\e[01;91m\] > \[\e[m\]"
	export PS2="\[\e[01;91m\] > \[\e[m\]"
else
	export PS1="\[\e[107m\e[01;31m\] • \[\e[m\]\[\e[01;36m\] \$NIHON \[\e[00;37m\]\w\[\e[01;96m\] > \[\e[m\]"
	export PS2="\[\e[01;96m\] > \[\e[m\]"
fi

# Run fetch
clear
if command -v vega >> /dev/null
then vega
else neofetch
fi


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
