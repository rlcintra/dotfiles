#
# ~/.bashrc
#

set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi

alias ls='ls --color=auto'
alias ll='ls -l'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

#export TERM=xterm-256color
#export TERM=xterm-termite

# echo -ne    '\e]10;#d0d0d0\a' # ForegroundColour
# echo -ne    '\e]11;#404040\a' # BackgroundColour
# echo -ne    '\e]12;#ffaf00\a' # CursorColour
# echo -ne '\e]4;262;#80e0a0\a' # IMECursorColour
# echo -ne   '\e]4;0;#0c0c0c\a' # Black
# echo -ne   '\e]4;8;#0a0a0a\a' # BoldBlack
# echo -ne   '\e]4;1;#d78787\a' # Red
# echo -ne   '\e]4;9;#df8787\a' # BoldRed
# echo -ne   '\e]4;2;#afd787\a' # Green
# echo -ne  '\e]4;10;#afdf87\a' # BoldGreen
# echo -ne   '\e]4;3;#f7f7af\a' # Yellow
# echo -ne  '\e]4;11;#ffffaf\a' # BoldYellow
# echo -ne   '\e]4;4;#87afd7\a' # Blue
# echo -ne  '\e]4;12;#87afdf\a' # BoldBlue
# echo -ne   '\e]4;5;#d7afd7\a' # Magenta
# echo -ne  '\e]4;13;#dfafdf\a' # BoldMagenta
# echo -ne   '\e]4;6;#afd7d7\a' # Cyan
# echo -ne  '\e]4;14;#afdfdf\a' # BoldCyan
# echo -ne   '\e]4;7;#e6e6e6\a' # White
# echo -ne  '\e]4;15;#eeeeee\a' # BoldWhite

# allow termite to open new window (ctrl+shift+t)
#if [[ $TERM == xterm-termite ]]; then
#    . /etc/profile.d/vte.sh
#    __vte_prompt_command
#fi

export PATH=$PATH:~/.cabal/bin

export KARAF_HOME_DEV=/home/rafael/temp/apache-karaf

