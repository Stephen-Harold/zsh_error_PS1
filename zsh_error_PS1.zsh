#!/bin/bash

# zsh option "prompt substitution" of PS1 prompt active
setopt prompt_subst

# re-define "command not foumnd" event handler to add console beep
function command_not_found_handler() {
        osascript -e beep&echo "zsh: command not found: $1"&
        return 127;
}

# zsh command to fire prior to the prompt displaying
precmd() {
# _relrtnval: Return value before the functions here execute
	local _relrtnval=$?
	local _yel=$(tput setaf 11)
	local _cyan=$(tput setaf 12)
	local _gr=$(tput setaf 10)
	local _red=$(tput setaf 1)
	local _rst=$(tput sgr0)
	local _pwd=${PWD/$HOME/'~'}
	local _errclr=$_gr
	if [ $_relrtnval != 0 ]; then
		_errclr=$_red;
	fi
	PS1=$(printf "[$_yel%s$_rst@$_cyan%s$_rst($_gr%s$_rst)]%s$:$_rst " "$USER" "%m" "%1~" "$_errclr")
 }
