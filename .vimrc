" =========== plugins ===========
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:airline_theme='soda'

" =========== workbench / editor ===========

" support using mouse scroll event to view code instead of scrolling the
" terminal itself
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

set nu
set ruler
set novisualbell
set showmatch
set noerrorbells
set autoread
set nobackup
set noswapfile

" change cursor style in different mode 
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
" cursor settings
"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

" =========== language / syntax ===========
syntax on

" =========== keymaps ===========
let mapleader=" " " map <space> to <leader>

" save & quit
nmap <leader>q :q<CR>
nmap <leader>w :w!<CR>
nmap <leader>s :w!<CR>

" copy paste from system clipboard
nmap <Leader>y "*y
nmap <Leader>p "*p
nmap <Leader>Y "+y
nmap <Leader>P "+p

" quit INSERT MODE quickly
imap jj <Esc>

" use ctrl-c to copy instal VISUAL mode
vnoremap <C-c> "*y
"
" =========== misc ===========
" auto refresh when editting .vimrc file
autocmd BufWritePost $MYVIMRC source $MYVIMRC

