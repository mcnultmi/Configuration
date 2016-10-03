"==================== Mappings ==========================

"====================== General =========================

" Set leader key to comma
let mapleader = ","

" NERDTree toggle on/off
map <C-n> :NERDTreeToggle<CR>

" Turn off search highlights
nnoremap <leader><space> :nohlsearch<CR>

" Unmap the arrow keys
" (Up and down will move lines up or down one line)
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" Centering the screen after movement commands
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

" Quick pairs
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i

" j and k keys move visually rather than by line
nnoremap j gj
nnoremap k gk

" Highlight last inserted text
nnoremap gV `[v`]

"===================== Filetype Specific ==================

"####### JAVA #######

" Compile and run Java class
nnoremap <F12> :!javac %<CR>
nnoremap <F11> :!java %:r<CR>

" Set up new Java class
iabbr newjava public class ClassName {<CR><CR>public static void main(String[] args) {<CR><CR>}<CR>}<ESC>?ClassName<CR>Nciw

" Mapping for system output
imap sysout System.out.println();<ESC>hi

" Mapping for setup
imap psvm public static void main (String [] args) {<CR>}<ESC>O
imap psfi private static final int = <ESC> 
imap psfd private double final double = <ESC> 

" Hello World
imap helloworld public static void main (String [] args) {<CR>System.out.println("Hello, World!");<CR>}<ESC>

" Epsilon
imap fdep final double EPSILON = 1E-14;<ESC>

" System exit
imap sysexit System.exit(0);<ESC>

"####### HTML #######

" Set up new HTML file
iabbr newhtml <!DOCTYPE html><CR><html lang="en"><CR><head><CR><meta charset="utf-8"><CR><title>xyz</title><CR></head><CR><body><CR></body><CR></html><ESC>?xyz<CR>Nciw

"###### PYTHON ######
