scriptencoding utf-8

set encoding=utf-8

" For a smarter searching
set ignorecase

" For a smarter tag search
set tagcase=smart

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
set undodir=~/.vim/undodir//


set wrap
set linebreak

" Change leader key to , (comma)
let mapleader=','
let maplocalleader=','

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*/node_modules/**
set wildignore+=*/PF.Base/file/cache/**
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

" autocmd FileType php setl ofu=phpcomplete#CompletePHP
autocmd FileType ruby,eruby setl ofu=rubycomplete#Complete
autocmd FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
autocmd FileType c setl ofu=ccomplete#CompleteCpp
autocmd FileType css setl ofu=csscomplete#CompleteCSS
autocmd BufRead,BufNewFile *.htm set ft=html.twig
autocmd BufNewFile,BufRead *.blade.php set filetype=blade.html.php | set syntax=blade

" Show all possibilities of completition on cmd
set wildmenu
set wildmode=list:longest,full
set wildignorecase

set splitbelow
set splitright

" Better split char
set fillchars=vert:│

" Maintain undo history between sessions
set undofile

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

set wrap
set nojoinspaces                      " J command doesn't add extra space

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

" Nova colors
Plug 'trevordmiller/nova-vim'
Plug 'alnjxn/estilo-nova'

Plug 'nelsyeung/twig.vim'

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
      \| Plug 'shirataki/lightline-onedark'
      \| Plug 'majutsushi/tagbar'

" Easy way to wrap/unwrap words
Plug 'tpope/vim-surround'

Plug 'mklabs/split-term.vim'

" Atom's One Colorscheme for vim
Plug 'rakr/vim-one'

" Easy string coercion
Plug 'tpope/vim-abolish'

" Programming metrics
Plug 'wakatime/vim-wakatime'

" Goyo: distraction free mode for vim
Plug 'junegunn/goyo.vim', { 'on': ['Goyo'] }

" A simple way to create, edit and save files and parent directories
Plug 'duggiefresh/vim-easydir'

" Auto generate my tags while i work
Plug 'ludovicchabant/vim-gutentags'

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

Plug 'dyng/ctrlsf.vim'

Plug 'KeitaNakamura/neodark.vim'

Plug 'JulesWang/css.vim'
      \| Plug 'groenewege/vim-less'
      \| Plug 'hail2u/vim-css3-syntax'
      \| Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss'] }

Plug 'amix/open_file_under_cursor.vim'

" Plug 'ctrlpvim/ctrlp.vim'

Plug 'Raimondi/delimitMate'

Plug 'nelstrom/vim-visual-star-search'

Plug 'tyrannicaltoucan/vim-quantum'

Plug 'pangloss/vim-javascript'
  \| Plug 'mxw/vim-jsx'

" A helper for editing files through ssh/ftp
Plug 'zenbro/mirror.vim'

" A helper to toggle the background dark or light
Plug 'rakr/vim-togglebg'

" Move through words in CamelCase style
Plug 'bkad/CamelCaseMotion'

" Aims to replace Vim's default '10 lines yanked' with a more meaningful
" '10 lines yanked into register c', when used together with a register.
Plug 'thalesmello/nvim-better-operator-message'

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

Plug 'dietsche/vim-lastplace'

Plug 'terryma/vim-multiple-cursors'

Plug 'ternjs/tern_for_vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }

Plug 'lambdalisue/vim-backslash'

Plug 'Shougo/vimproc.vim', {'do' : 'make'}

Plug 'Shougo/neoinclude.vim'

Plug 'Shougo/neco-vim'

Plug 'Shougo/echodoc.vim'

Plug 'Shougo/context_filetype.vim'

Plug 'jwalton512/vim-blade'

Plug 'wavded/vim-stylus'

Plug 'vim-scripts/smarty-syntax'

Plug 'arnaud-lb/vim-php-namespace', { 'for' : 'php' }

Plug 'stephpy/vim-php-cs-fixer', { 'for' : 'php' }

Plug 'Valloric/MatchTagAlways'

Plug 'milkypostman/vim-togglelist'

Plug 'pgdouyon/vim-niffler'

Plug 'posva/vim-vue'

Plug 'kien/rainbow_parentheses.vim'

Plug 'venantius/vim-eastwood'

Plug 'guns/vim-clojure-static'
  \| Plug 'guns/vim-clojure-highlight'

Plug 'kana/vim-textobj-user'
  \| Plug 'kana/vim-textobj-function'
  \| Plug	'kana/vim-textobj-line'
  \| Plug 'coderifous/textobj-word-column.vim'
  \| Plug 'mattn/vim-textobj-url'
  \| Plug 'akiyan/vim-textobj-php'
  \| Plug 'kana/vim-textobj-indent'
  \| Plug 'adriaanzon/vim-textobj-blade-directive'
  \| Plug 'sgur/vim-textobj-parameter'
  \| Plug 'whatyouhide/vim-textobj-xmlattr'
  \| Plug 'rhysd/vim-textobj-anyblock'
  \| Plug 'kentaro/vim-textobj-function-php'
  \| Plug 'thinca/vim-textobj-function-javascript'
  \| Plug 'saaguero/vim-textobj-pastedtext'
  \| Plug 'kana/vim-textobj-datetime'
  " \| Plug 'jasonlong/vim-textobj-css'

Plug 'tommcdo/vim-exchange'

Plug 'Shougo/denite.nvim'

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

autocmd FileType javascript JsPreTmpl markdown

function! IPhpInsertUse()
  call PhpInsertUse()
  call feedkeys('a',  'n')
endfunction

autocmd FileType php noremap <space>pe :call PhpExpandClass()<CR>
autocmd FileType php noremap <space>pi :call PhpInsertUse()<CR>

function! IPhpExpandClass()
  call PhpExpandClass()
  call feedkeys('a', 'n')
endfunction

let g:php_cs_fixer_enable_default_mapping = 0


function! ToPhpShortArray()
  execute '!array-converter -w ' . expand('%')
  execute 'edit ' . expand('%')
endfunction

function! CustomPhpCsFixFile()
  write
  call ToPhpShortArray()
  call PhpCsFixerFixFile()
endfunction

autocmd FileType php nnoremap <silent><C-f> :call CustomPhpCsFixFile()<CR>

nnoremap <C-]> <C-w><C-]><C-w>T

nmap <space>ve :tabe ~/.vim/init.vim<cr>
nmap <space>vl :so ~/.vim/init.vim<cr>

let g:toggle_list_no_mappings = 1

nmap <script> <silent> <space>l :call ToggleLocationList()<CR>
nmap <script> <silent> <space>q :call ToggleQuickfixList()<CR>

nnoremap <C-C> :CtrlSF
inoremap <C-C> <esc>:CtrlSF

let g:ctrlsf_populate_qflist = 1
let g:ctrlsf_position = 'bottom'

nmap <space>k :res -10<CR>
nmap <space>j :res +10<CR>
nmap <space>h :vertical resize -10<CR>
nmap <space>l :vertical resize +10<CR>

vmap <C-y> "*y
map <C-p> "*p

nmap <C-p> :update<CR>:Niffler ./<CR>

" Define some single Blade directives. This variable is used for highlighting only.
let g:blade_custom_directives = []

" Define pairs of Blade directives. This variable is used for highlighting and indentation.
let g:blade_custom_directives_pairs = {
      \   'shield': 'endshield',
      \ }

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'blade' : 1,
    \ 'php' : 1,
    \ 'javascript' : 1,
    \}

let g:jsx_ext_required = 0
let g:jsx_pragma_required = 0

map <leader>; $a;<esc>

let g:goyo_width = 190
let g:goyo_height = 100
let g:goyo_linenr = 10

" Movement in insert mode
inoremap <C-h> <C-o>h
inoremap <C-l> <C-o>a
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k

" Making smaller chunks of undo while only writing
inoremap . .<c-g>u
inoremap ? ?<c-g>u
inoremap , ,<c-g>u
inoremap ! !<c-g>u

set completeopt-=preview
