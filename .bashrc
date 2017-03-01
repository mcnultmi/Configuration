# ========= EXECUTED WHEN OPENING NEW TERMINAL =========

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use coloured listing by default
alias ls='ls --color=auto'

# Customise Prompt
PS1='[\u@\h \W]\$ '

# Powerline
export PYTHONPATH=/usr/lib/python3.6/site-packages
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh
