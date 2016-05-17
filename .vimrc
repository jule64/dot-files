
" Main sources for this config include:
"     Amir Salihefendic's `basic.vim` (https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim)
"     The vim config of Redis' Salvatore Sanfilippo, a.k.a. @antirez



set softtabstop=4
set shiftwidth=4
set expandtab
set incsearch
set hlsearch
set ignorecase
set smartcase
set ruler
set showmode
set viminfo=%,'50,\"100,:100,n~/.viminfo
set autoindent
set backspace=2

:set ignorecase
:set smartcase  "case-sensitive if search contains an uppercase character

:syntax on    "colour syntax in Perl,HTML,PHP etc


" When open a new file remember the cursor position of the last editing
if has("autocmd")
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost * if line("'\"") | exe "'\"" | endif
endif



" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

:nmap ; :


" visual shifting with repeat
:vnoremap < <gv
:vnoremap > >gv

set whichwrap+=<,>,[,]
set backspace=indent,eol,start

"autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

map j gj
map k gk
