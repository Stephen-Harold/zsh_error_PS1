#!/bin/bash

set -o PROMPT_SUBST
set PROMPT_PERCENT

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
	PS1="[%{$_yel%}%n%{$_errclr%}:%{$_cyan%}%m%{$_rst%}(%{$_gr%}%1~%{$_rst%})]%{$_errclr%}%{$_rst%}"
}
