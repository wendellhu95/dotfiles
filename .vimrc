" =========== plugins ===========
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'arcticicestudio/nord-vim'

call plug#end()

let g:airline_theme='nord'

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
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2

colorscheme nord

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

highlight clear SignColumn " clear vim gutter background color
highlight clear VertSplit

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

" nerdtree
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeQuitOnOpen=1
let NERDTreeChDirMode=0
let NERDTreeMouseMode=2
let NERDTreeKeepTreeInNewTab=1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" =========== misc ===========
" auto refresh when editting .vimrc file
autocmd BufWritePost $MYVIMRC source $MYVIMRC

