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
if executable('ctags')
  Plug 'ludovicchabant/vim-gutentags'
endif

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

Plug 'kien/ctrlp.vim'

Plug 'Raimondi/delimitMate'

Plug 'nelstrom/vim-visual-star-search'

Plug 'pangloss/vim-javascript'

" A helper for editing files through ssh/ftp
Plug 'zenbro/mirror.vim'

" A helper to toggle the background dark or light
Plug 'rakr/vim-togglebg'

" Move through words in CamelCase style
Plug 'bkad/CamelCaseMotion'

Plug 'maksimr/vim-jsbeautify', {'for': [
      \'javascript',
      \'html',
      \'css',
      \'less',
      \'scss',
      \'jsx',
      \'json',
      \]}

" Elm syntax
Plug 'lambdatoast/elm.vim'

" Better HTML and HTML5 syntax
Plug 'othree/html5.vim'

" Typescript syntax
Plug 'leafgarland/typescript-vim'

" JSX Syntax
Plug 'maxmellon/vim-jsx-pretty'


call plug#end()