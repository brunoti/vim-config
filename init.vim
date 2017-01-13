scriptencoding utf-8

set encoding=utf-8

set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

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
set wildignore+=*/node_modules/**
set wildignore+=*/vendor/*
set wildignore+=*/bower_components/**
set wildignore+=*/libs/**
set wildignore+=*/**/*.doc*
set wildignore+=*/**/*.psd*
set wildignore+=*/**/*.jpg*
set wildignore+=*/**/*.jpeg*
set wildignore+=*/**/*.png*
set wildignore+=*/**/*.gif*
set wildignore+=*/**/*.gif*
set wildignore+=*/docs/**

autocmd FileType php setl ofu=phpcomplete#CompletePHP
autocmd FileType ruby,eruby setl ofu=rubycomplete#Complete
autocmd FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
autocmd FileType c setl ofu=ccomplete#CompleteCpp
autocmd FileType css setl ofu=csscomplete#CompleteCSS
autocmd BufRead,BufNewFile *.htm set ft=html.twig
autocmd BufNewFile,BufRead *.blade.php set filetype=blade.html.php | set syntax=blade
autocmd BufNewFile,BufRead *.txt source ~/.vim/syntax/txt.vim


" Show all possibilities of completition on cmd
set wildmenu
set wildmode=list:longest,full
set wildignorecase

set splitbelow
set splitright
set fillchars=vert:│

" ----------------------------------------------------------------------------
" Input auto-formatting (global defaults)
" Probably need to update these in after/ftplugin too since ftplugins will
" probably update it.
" ----------------------------------------------------------------------------

set formatoptions=
set formatoptions+=c                  " Auto-wrap comments using textwidth
set formatoptions+=r                  " Continue comments by default
set formatoptions-=o                  " do not continue comment using o or O
set formatoptions+=q                  " continue comments with gq
set formatoptions-=a                  " auto-gq on type in comments?
set formatoptions+=n                  " Recognize numbered lists
set formatoptions+=2                  " Use indent from 2nd line of a paragraph
set formatoptions-=l                  " break lines that are already long?
set formatoptions+=1                  " Break before 1-letter words

" Vim 7.4 only: no // comment when joining commented lines
if v:version >= 704 | set formatoptions+=j | endif

set nrformats-=octal                  " never use octal when <C-x> or <C-a>

" ----------------------------------------------------------------------------
" Whitespace
" ----------------------------------------------------------------------------

set nowrap
set nojoinspaces                      " J command doesn't add extra space


set statusline+=%{fugitive#statusline()}

" Auto install if not installed and install all the plugs
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Command for updating plugins and updating vim-plug after
command! PU PlugUpdate | PlugUpgrade

call plug#begin('~/.vim/plugged')

" To verify Move lines like Sublime
"   - t9md/vim-textmanip
"   - matze/vim-move


" Hybrid Colorscheme
Plug 'w0ng/vim-hybrid'

" NERD Tree for side-bar folders
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeFind', 'NERDTree'] }

" Snippets for vim
Plug 'SirVer/ultisnips'

" Emmet to write html, css and JSX faster!
Plug 'mattn/emmet-vim'

" Editor config
Plug 'editorconfig/editorconfig-vim'

" Better status bar (similar to airline but lighter)
Plug 'itchyny/lightline.vim'
      \| Plug 'cocopon/lightline-hybrid.vim'

" Easy way to wrap/unwrap words
Plug 'tpope/vim-surround'

" Easy string coercion
Plug 'tpope/vim-abolish'

" Programming metrics
Plug 'wakatime/vim-wakatime'

" Goyo: distraction free mode for vim
Plug 'junegunn/goyo.vim', { 'for': ['markdown', 'txt'] }

" A simple way to create, edit and save files and parent directories
Plug 'duggiefresh/vim-easydir'

" Auto generate my tags while i work
" if executable('ctags')
Plug 'ludovicchabant/vim-gutentags'
" endif

" Tabularize is awesome
Plug 'godlygeek/tabular', { 'on': [ 'Tabularize' ] }

Plug 'chrisbra/vim-zsh'

Plug 'chrisbra/vim-sh-indent'

" A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-dispatch'

Plug 'tpope/vim-repeat'

" Add file manip commands like Remove, Move, Rename, SudoWrite
Plug 'tpope/vim-eunuch'

Plug 'tpope/vim-commentary'

Plug 'vim-syntastic/syntastic'

Plug 'StanAngeloff/php.vim', { 'for': 'php' }

Plug '2072/PHP-Indenting-for-VIm'

Plug 'ap/vim-css-color'

Plug 'JulesWang/css.vim'
      \| Plug 'groenewege/vim-less'
      \| Plug 'hail2u/vim-css3-syntax'
      \| Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss'] }

Plug 'amix/open_file_under_cursor.vim'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'Raimondi/delimitMate'

Plug 'nelstrom/vim-visual-star-search'

Plug 'pangloss/vim-javascript'

" A helper for editing files through ssh/ftp
Plug 'zenbro/mirror.vim'

" A helper to toggle the background dark or light
Plug 'rakr/vim-togglebg'

" Move through words in CamelCase style
Plug 'bkad/CamelCaseMotion'

" Linter and other features for Typescript
Plug 'Quramy/tsuquyomi'

" Highlights JavaScript's Template Strings in other FileType syntax
Plug 'Quramy/vim-js-pretty-template'

" Beutifiers for CSS, HTML and Javascript/Json/JSX
Plug 'maksimr/vim-jsbeautify', {'for': [
      \  'blade',
      \  'javascript',
      \  'html',
      \  'css',
      \  'less',
      \  'scss',
      \  'jsx',
      \  'json' ]}

" Elm syntax
Plug 'lambdatoast/elm.vim'

" Better HTML and HTML5 syntax
Plug 'othree/html5.vim'

" Typescript syntax
Plug 'leafgarland/typescript-vim'

" JSX Syntax
Plug 'maxmellon/vim-jsx-pretty'

Plug 'dietsche/vim-lastplace'

Plug 'terryma/vim-multiple-cursors'

Plug 'ternjs/tern_for_vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

Plug 'pbogut/deoplete-padawan', {
      \ 'do': 'composer global require mkusher/padawan',
      \ 'for': 'php' }

Plug 'lambdalisue/vim-backslash'

Plug 'Shougo/vimproc.vim', {'do' : 'make'}

Plug 'Shougo/neoinclude.vim'

Plug 'Shougo/neco-vim'

Plug 'Shougo/echodoc.vim'

Plug 'Shougo/context_filetype.vim'

Plug 'jwalton512/vim-blade'

Plug 'mileszs/ack.vim'

Plug 'wavded/vim-stylus'

Plug 'arnaud-lb/vim-php-namespace', { 'for' : 'php' }

Plug 'stephpy/vim-php-cs-fixer', { 'for' : 'php' }


call plug#end()

if has('nvim')
  nnoremap <space>t  :vsplit +terminal<cr>
  tnoremap <esc>      <c-\><c-n>
  tnoremap <a-h>      <c-\><c-n><c-w>h
  tnoremap <a-j>      <c-\><c-n><c-w>j
  tnoremap <a-k>      <c-\><c-n><c-w>k
  tnoremap <a-l>      <c-\><c-n><c-w>l
  autocmd BufEnter term://* startinsert
  autocmd TermClose * call feedkeys('<cr>')
endif

cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

autocmd FileType javascript JsPreTmpl markdown

function! IPhpInsertUse()
  call PhpInsertUse()
  call feedkeys('a',  'n')
endfunction

" autocmd FileType php inoremap <C-I> <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <space>i :call PhpInsertUse()<CR>

function! IPhpExpandClass()
  call PhpExpandClass()
  call feedkeys('a', 'n')
endfunction

let g:php_cs_fixer_enable_default_mapping = 0

" autocmd FileType php inoremap <C-e> <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <space>e :call PhpExpandClass()<CR>

function! CustomPhpCsFixFile()
  write
  call PhpCsFixerFixFile()
endfunction

function! CustomPhpCsFixDirectory()
  write
  call PhpCsFixerFixDirectory()
endfunction

autocmd FileType php nnoremap <silent><C-f> :call CustomPhpCsFixerFixDirectory()<CR>
autocmd FileType php nnoremap <silent><C-f> :call CustomPhpCsFixerFixFile()<CR>
