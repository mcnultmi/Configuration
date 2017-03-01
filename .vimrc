"=============== VIM Configuration ===============

"Powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

"Required for pathogen
execute pathogen#infect()

" Enable CtrlP vim
set runtimepath^=~/.vim/bundle/ctrlp.vim

"================ Script configs =================

source ~/.vim/startup/color.vim
"source ~/.vim/startup/functions.vim
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim

