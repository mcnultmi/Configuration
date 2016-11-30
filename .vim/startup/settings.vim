"=========================== General Settings ==============================

syntax enable                       " Enable syntax highlighting
filetype plugin indent on           " Filetype stuff
set nocompatible                    " Remove standard vi-like behaviours
set showmatch                       " Show matching parentheses
set backspace=eol,start,indent      " Specify backspace deletion behaviour
set autoindent                      " Enable automatic indentation
set wildmenu                        " Show available autocomplete options in command mode
set ruler                           " Show the ruler in the bottom right (line and column number)
set cursorline                      " Highlight the line that the cursor is currently on
set relativenumber                  " Show line numbers relateive to the current line
set number                          " Show line numbers
set incsearch                       " Complete searches while typing (before hitting enter)
set hlsearch                        " Highlight search results throughout file
set showcmd                         " Show the last command executed at the bottom
set scrolloff=5                     " Show at least 5 lines above and below the cursor at all times
set laststatus=2                    " Always display the status line


"============================= Tabs & Spaces ================================

"set softtabstop=4                   " The number of spaces a Tab character counts for when editing
"set tabstop=4                       " Number of spaces used to represent a Tab when reading a file
"set shiftwidth=4                    " Number of spaces to move using the '<<' and '>>' keys
"set expandtab                       " Insert space characters instead of Tabs

"autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
"autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4
let g:html_indent_inctags = "html,body,head,tbody,script"

"=========================== Folding Settings ===============================

set foldenable                      " Enable folding
set foldlevelstart=10               " Sets the level of folds at which are opened
set foldnestmax=10                  " Maximum number of permitted fold nests
set foldmethod=manual               " How are folds created

"=========================== Display Settings ===============================

set t_Co=256                        " Allow for 256 color support
let g:airline_theme='bubblegum'     " Vim Airline Theme
set guifont=PT_Mono:h16:cANSI       " Set system font for GUI mode

" Hide toolbars and scrollbars on startup
"set guioptions-=m                   " Remove menu bar
"set guioptions-=T                   " Remove toolbar
"set guioptions-=r                   " Remove right-hand scroll bar
"set guioptions-=L                   " Remove left-hand scroll bar

" Start gVim in fullscreen under Windows
" Use ~x on an English Windows version or ~n for French.
"au GUIEnter * simalt ~x
