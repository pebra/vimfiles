set nocompatible

syntax on
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()


Bundle 'gmarik/vundle'
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'vim-ruby/vim-ruby.git'
Bundle 'tpope/vim-rake'
Bundle 'kchmck/vim-coffee-script'
Bundle 'elzr/vim-json'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-git'
Bundle 'scrooloose/nerdtree' 
Bundle 'junegunn/seoul256.vim'
Bundle 'tomasr/molokai'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-surround.git'
Bundle 'rking/ag.vim'
Bundle 'mintplant/vim-literate-coffeescript'
Bundle 'kien/ctrlp.vim'
Bundle 'mivok/vimtodo'
"Bundle 'Valloric/YouCompleteMe'



filetype plugin indent on

if has('syntax') && !exists('g:syntax_on')
  syntax enable			" Turn on syntax highlighting
endif

"Disable arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

set smarttab              
set shiftround            
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set relativenumber
set laststatus=2
set statusline=%f "tail of the filename
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab " propper indentation for coffee
set hidden

set t_Co=256
set background=dark
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

colorscheme seoul256

set autoread


set history=200


set encoding=utf-8

" ----------------------------------------------------------------------------
"  "  moving around, searching and patterns
"  "
"  ----------------------------------------------------------------------------
set nostartofline   " keep cursor in same column for long-range motion cmds
set incsearch  " Highlight pattern matches as you type
set ignorecase" ignore case when using a search pattern
set smartcase  " override 'ignorecase' when pattern
                      " has upper case character



if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes
  "   " work properly when Vim is used inside tmux and GNU screen.
  "     " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif



"statusline stuff
set statusline=
set statusline+=b%-1.3n\ >                    " buffer number
set statusline+=\ %{fugitive#statusline()}:
set statusline+=\ %F
set statusline+=\ %M
set statusline+=%R
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%=
set statusline+=\ %Y
set statusline+=\ <\ %{&fenc}
set statusline+=\ <\ %{&ff}
set statusline+=\ <\ %p%%
set statusline+=\ %l:
set statusline+=%02.3c		" cursor line/total lines

set helpheight=30         " Set window height when opening Vim help windows

set ttyfast
