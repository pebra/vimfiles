set nocompatible
filetype off

syntax on

set rtp+=~/.vim/bundle/vundle
call vundle#rc()


Bundle 'gmarik/vundle'
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'vim-ruby/vim-ruby.git'
Bundle "tpope/vim-rake"
Bundle "kchmck/vim-coffee-script"
Bundle 'elzr/vim-json'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-git'
Bundle 'scrooloose/nerdtree' 
Bundle 'junegunn/seoul256.vim'
Bundle 'tomasr/molokai'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-fugitive.git'



filetype plugin indent on

if has('syntax') && !exists('g:syntax_on')
  syntax enable			" Turn on syntax highlighting
endif

set smarttab              
set shiftround            
set tabstop=2
set shiftwidth=2
set softtabstop=2
set number
set laststatus=2
set statusline=%f "tail of the filename

set t_Co=256
set background=dark
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

colorscheme toychest

set autoread


set history=200


set encoding=utf-8


if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes
  "   " work properly when Vim is used inside tmux and GNU screen.
  "     " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

