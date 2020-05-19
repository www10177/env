"VIMRC of Rist
"NCCUCS s10347
"Last update  
"二  2月  3 12:09:52 CST 2015

set nocompatible
"set secure

set backspace=2         " allow backspacing over everything in insert mode
set viminfo='20,\"50    " read/write a .viminfo file, don't store more " than 50 lines of registers set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time

"set expandtab          " expand tabs to spaces.
set wildchar=<TAB>      " such as <TAB> in shell
set smarttab
set tabstop=4
set shiftwidth=4

set cindent 			" auto indent
set nu 					" Show the number of line
set t_Co=256            " number of colors
set t_Sf=[1;3%p1%dm   " set foreground color
set t_Sb=[1;4%p1%dm   " set background color
set showcmd             " show command
set showmode            " show current mode
set incsearch           " While typing a search pattern, show immediately 
                        " where the so far typed pattern matches.
set hlsearch            " When there is a previous search pattern, 
                        " highlight all its matches.
syntax on               " show parts of the text in another font or color

set cursorline 			" underline where the cursor 
set foldmethod=marker   " set {{ { and  }} } to fold automatically
set fileencodings=utf-8,cp936,big5,latin1
set background=dark

autocmd FileType c,cpp,cc,java call PROG()
autocmd FileType make setlocal noexpandtab

colorscheme default 	" syntax color(?)

function PROG()
    set showmatch
    set nosmartindent
    set cindent comments=sr:/*,mb:*,el:*/,:// cino=>s,e0,n0,f0,{0,}0,^-1s,:0,=s,g0,h1s,p2,t0,+2,(2,)20,*30
    set cinoptions=t0
    imap <C-a>f <END><CR>for(;;) {<CR>}<LEFT>
                \<CR><UP><UP><UP><RIGHT><RIGHT><RIGHT><RIGHT><RIGHT>
    imap <C-a>w <END><CR>while( ) {<CR>}<LEFT>
                \<CR><UP><UP><UP><END><LEFT><LEFT>
    set formatoptions=tcqr
endfunction


highlight Comment    ctermfg=DarkCyan
highlight SpecialKey ctermfg=Yellow

"alias
map <S-w> :update<CR>                    " using :update to replace :w
map <F3> :update<CR>:q<CR>
map <F4> :q!<CR>
map <F8> :!gcc % -o %:r <CR>
"map <F9> :!make %:r <CR>
map <F9> :!make <CR>

map <F10> <ESC>:read !date<CR>
"insert mode shortcut
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <DELETE>
inoremap jj <ESC>

"shortcut for tab
nnoremap <C-n> :tabn<CR>
nnoremap <C-p> :tabp<CR>
nnoremap <C-l> $
nnoremap <C-h> ^
nnoremap te :tabedit 
" Let python file follow PEP8'
au BufNewFile, BufRead *.py
\ set tabstop=4
\ set softtabstop=4
\ set shiftwidth=4
\ set textwidth=79
\ set expandtab
\ set autoindent
\ set fileformat=unix

au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\ $/


"Plugin

filetype off "Vundle required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

"snipmate
"auto complete special keyword
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

"SuperTab
"use tab to auto complete
Plugin 'ervandew/supertab'

"NERD's commenter
Plugin 'scrooloose/nerdcommenter'

" Python indent folder
Plugin 'tmhedberg/SimpylFold'

" Python Indent
Plugin 'vim-scripts/indentpython.vim'

call vundle#end()            " required
filetype plugin indent on
