# ========= EXECUTED WHEN OPENING NEW TERMINAL =========


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use coloured listing by default
alias ls='ls --color=auto'

# Customise Prompt
PS1='[\u@\h \W]\$ '
