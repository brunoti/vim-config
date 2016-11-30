if has('vim_starting') | set encoding=utf-8 nobomb | endif

scriptencoding utf-8

set encoding=utf-8

set termguicolors

set expandtab    " default to spaces instead of tabs
set shiftwidth=2 " softtabs are 2 spaces for expandtab

" Alignment tabs are two spaces, and never tabs. Negative means use same as
" shiftwidth (so the 2 actually doesn't matter).
set softtabstop=-2

" real tabs render width. Applicable to HTML, PHP, anything using real tabs.
" I.e., not applicable to JS.
set tabstop=2

" use multiple of shiftwidth when shifting indent levels.
" this is OFF so block comments don't get fudged when using ">>" and "<<"
set noshiftround

" When on, a <Tab> in front of a line inserts blanks according to
" 'shiftwidth'. 'tabstop' or 'softtabstop' is used in other places.
set smarttab

set backspace=indent,eol,start        " bs anything

" Set new backup and swap directory
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

set wrap
set linebreak

let mapleader=','

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*/node_modules/*
set wildignore+=*/vendor/*

set statusline+=%{fugitive#statusline()}

source ~/.vim/plugins.vim
source ~/.vim/javascript.vim
source ~/.vim/maps.vim
source ~/.vim/syntastic.vim
source ~/.vim/colorscheme.vim
source ~/.vim/nerdtree.vim
source ~/.vim/lightline.vim
source ~/.vim/javascript.vim
source ~/.vim/delimit-mate.vim

" Insert the current date and time (useful for timestamps)
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
iab xnow <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>
iab xemail bruno.oliveirati1@gmail.com
iab xauthor Bruno Oliveira <bruno.oliveirati1@gmail.com>

let g:surround_{char2nr("b")} = "{{ \r }}"
let g:surround_{char2nr("n")} = "{!! \r !!}"
let g:surround_{char2nr("t")} = "{% \r %}"
let g:surround_{char2nr("\\")} = "\\\"\r\\\""

call togglebg#map("<F5>")

let g:vim_jsx_pretty_enable_jsx_highlight = 1
let g:vim_jsx_pretty_colorful_config = 1

" Open on the last line you was on the file
set viminfo='10,\"30,:20,%,n~/.viminfo
au BufReadPost * if line("'\"")|execute("normal `\"")|endif"`")'
