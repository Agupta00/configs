"source ~/.vim/bundle/cscope_maps.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'rhysd/clever-f.vim'
"let g:clever_f_smart_case = 1
"let g:clever_f_mark_direct = 1
"let g:clever_f_chars_match_any_signs = 1
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

let mapleader = " "
syntax on
set encoding=utf-8
set clipboard=unnamedplus

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
filetype plugin indent on
set autoindent
let g:gruvbox_contrast_dark='medium'
set bg=dark
colorscheme gruvbox

autocmd BufNewFile,BufRead *.* set syntax=c 
set tags=tags

inoremap jk <ESC>

nnoremap ) {
nnoremap ( }
xnoremap ) {
xnoremap ( }

"for delete till 'char'
map s t

" ctrl+c to toggle highlight.
let hlstate=0
nnoremap <c-c> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<cr>

au BufRead,BufNewFile *.note setf note

