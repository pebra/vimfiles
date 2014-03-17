set nocompatible
set encoding=utf-8

syntax on
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()


Bundle 'gmarik/vundle'
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'tsaleh/vim-matchit'
Bundle 'vim-ruby/vim-ruby.git'
Bundle 'tpope/vim-rake'
Bundle 'kchmck/vim-coffee-script'
Bundle 'elzr/vim-json'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-git'
Bundle 'scrooloose/nerdtree'
Bundle 'junegunn/seoul256.vim'
Bundle 'jnurmine/Zenburn'
Bundle 'tomasr/molokai'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-surround.git'
Bundle 'rking/ag.vim'
Bundle 'mintplant/vim-literate-coffeescript'
Bundle 'kien/ctrlp.vim'
"Bundle 'mivok/vimtodo'
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-endwise'
Bundle 'pangloss/vim-javascript'
Bundle "othree/javascript-libraries-syntax.vim"
"Bundle 'Valloric/YouCompleteMe'
Bundle 'elixir-lang/vim-elixir'
Bundle 'AndrewRadev/splitjoin.vim'
"Bundle 'nono/vim-handlebars'

Bundle 'derekwyatt/vim-scala'
Bundle 'hsitz/VimOrganizer'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'kana/vim-textobj-user'
Bundle 'mustache/vim-mode'

"Stefans awesome toolchain
Bundle 'slim-template/vim-slim'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-repeat'
Bundle 'godlygeek/tabular'
Bundle 'bling/vim-airline'

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

map <leader>t :!mix test<CR>
"Toggle shell with ctr+d
noremap <C-d> :sh<cr>

" statusline
set laststatus=2
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
set statusline+=%02.3c           " cursor line/total lines

set smarttab
set shiftround
set tabstop=2
set backspace=2
set shiftwidth=2
set softtabstop=2
set expandtab
set ai
set smartindent
set relativenumber
" set statusline=%f "tail of the filename
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab " propper indentation for coffee
set hidden
"clean vertical split bar
set fillchars+=vert:\ "
set showbreak=↪\ \
set scrolloff=3

set t_Co=256
set background=dark
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

"disable syntax checking for html
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html'] }

let g:mustache_abbreviations = 1

colorscheme toychest

set autoread


set history=200


" Makes tabbing super awesome, yoloscheme
set wildmode=list:longest,full

" ----------------------------------------------------------------------------
"  "  moving around, searching and patterns
"  "
"  ----------------------------------------------------------------------------
set nostartofline   " keep cursor in same column for long-range motion cmds
set incsearch  " Highlight pattern matches as you type
set ignorecase " ignore case when using a search pattern
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

" Powerline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set helpheight=30         " Set window height when opening Vim help windows

set ttyfast

if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes
  " work properly when Vim is used inside tmux and GNU screen.
  " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

set hlsearch
set incsearch
filetype plugin indent on

if has("gui_macvim")
  set guifont=Sauce\ Code\ Powerline\ Light:h14
  set linespace=2
endif
