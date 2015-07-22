set encoding=utf-8
set nocompatible

syntax on
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Bundle 'gmarik/vundle'
Bundle 'wavded/vim-stylus'
Bundle 'tpope/vim-rails.git'
Bundle 'isRuslan/vim-es6'
" Bundle 'scrooloose/syntastic.git'
" Bundle 'tsaleh/vim-matchit'
Bundle 'vim-ruby/vim-ruby.git'
" Bundle 'tpope/vim-rake'
Bundle 'kchmck/vim-coffee-script'
Bundle 'elzr/vim-json'
Bundle 'tpope/vim-markdown'
" Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-surround.git'
Bundle 'scrooloose/nerdtree'
Bundle 'Shutnik/jshint2.vim'
Bundle 'etnadji/vim-epub'

" Bundle 'jelera/vim-javascript-syntax'

" colorschemes
Bundle 'cdmedia/itg_flat_vim'
Bundle 'NLKNguyen/papercolor-theme'
Bundle 'junegunn/seoul256.vim'
Bundle 'jnurmine/Zenburn'
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'cocopon/iceberg.vim'
Bundle 'cocopon/svss.vim'
Bundle 'jonathanfilip/vim-lucius'
Bundle 'daddye/soda.vim'
Bundle 'ciaranm/inkpot'
Bundle 'vim-scripts/summerfruit256.vim'
Bundle 'abra/vim-abra'
Bundle 'john2x/flatui.vim'
Bundle 'wellsjo/wells-colorscheme.vim'
Bundle 'duythinht/inori'
Bundle 'whatyouhide/vim-gotham'
Bundle 'romainl/Apprentice'
Bundle 'wimstefan/Lightning'
Bundle 'yosiat/oceanic-next-vim'
Bundle 'scheakur/vim-scheakur'
Bundle 'nice/sweater'
Bundle 'therubymug/vim-pyte'
Bundle 'vim-scripts/sonoma.vim'

Bundle 'ervandew/supertab'
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-endwise'
" Bundle 'pangloss/vim-javascript'
Bundle 'elixir-lang/vim-elixir'
" Bundle 'AndrewRadev/splitjoin.vim'
" rainbow parentheses
" Bundle 'luochen1990/rainbow'

" UltiSnips
" Bundle 'sirver/ultisnips'
" Bundle 'honza/vim-snippets'
" Bundle 'derekwyatt/vim-scala'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'kana/vim-textobj-user'
" Bundle 'StanAngeloff/php.vim'

"distraction free mode
" Bundle 'junegunn/goyo.vim'

"Stefans awesome toolchain
Bundle 'slim-template/vim-slim'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-repeat'
Bundle 'godlygeek/tabular'
Bundle 'bling/vim-airline'
" Bundle "othree/javascript-libraries-syntax.vim"

"clojure
" Bundle "guns/vim-clojure-static"
" Bundle "tpope/vim-fireplace"

" Bundle "juneedahamed/svnj.vim"


"don't get scroogled
call vundle#end()
filetype plugin indent on

if has('syntax') && !exists('g:syntax_on')
  syntax enable " Turn on syntax highlighting
endif

"Disable arrow keys
"inoremap  <Up>     <NOP>
"inoremap  <Down>   <NOP>
"inoremap  <Left>   <NOP>
"inoremap  <Right>  <NOP>
"noremap   <Up>     <NOP>
"noremap   <Down>   <NOP>
"noremap   <Left>   <NOP>
"noremap   <Right>  <NOP>

map <leader>t :!mix test<CR>
map <leader>r :!ruby %<CR>
map <leader>l :set list!<CR>
set list
set lcs=tab:▸\ ,nbsp:·,trail:·
highlight SpecialKey guifg=#fff000
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
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

" enable rainbooowww
let g:rainbow_active = 0

"disable syntax checking for html
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html', 'js'] }

let g:mustache_abbreviations = 1
" let g:used_javascript_libs = 'jquery,angularjs,angularui'
" let g:android_sdk_path = '/Users/peter/Development/Android/adt-bundle-mac/sdk'

"colorscheme toychest " vimbrant Tomorrow lucius
set background=dark
colorscheme pyte "PaperColor apprentice distinguished vimbrant Tomorrow luciussummerfruit256

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
let g:airline_powerline_fonts=1
" let g:airline_theme='luna'
let g:airline_theme='papercolor'
" let g:airline#extensions#tabline#enabled = 1

set helpheight=20         " Set window height when opening Vim help windows

set ttyfast

set hlsearch
set incsearch
"set foldmethod=indent
filetype plugin indent on

hi! link FoldColumn Normal
" set foldcolumn=4
" set nonumber

if has("gui_macvim")
  set guifont=Sauce\ Code\ Powerline:h14
  highlight ColorColumn guibg=Gray
  colorscheme pyte
  set background=dark
  set linespace=2
endif

" detect deface files
autocmd BufNewFile,BufRead *.html.erb.deface   set syntax=eruby

" thayer
" highlight ColorColumn ctermbg=7
" hi Visual term=reverse cterm=reverse guibg=Grey
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

 " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"hi Cursor cterm=NONE guifg=#2b3e50 guibg=#f8f8f2

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

"set g:php_syntax_extensions_enabled
"set b:php_syntax_extensions_enabled
"
set colorcolumn=120

" JSHINT
let jshint2_save = 1
let jshint2_confirm = 0

" Hex and Binary Shit
augroup Binary
au!
au BufReadPre *.bin let &bin=1
au BufReadPost *.bin if &bin | %!xxd
au BufReadPost *.bin set ft=xxd | endif
au BufWritePre *.bin if &bin | %!xxd -r
au BufWritePre *.bin endif
au BufWritePost *.bin if &bin | %!xxd
au BufWritePost *.bin set nomod | endif
augroup END
