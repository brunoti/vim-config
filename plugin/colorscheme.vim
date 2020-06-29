" always dark ever
set background=dark

" hybrid stuff
" let g:hybrid_custom_term_colors = 1
" let g:hybrid_reduced_contrast = 0
" colorscheme hybrid

" monochrome stuff
let g:monochrome_italic_comments = 1
colorscheme archman

" Make the SignColumn and VertSplit background color always "whithout color" so it defaults
" to the current colorscheme background
hi! VertSplit none
hi! SignColumn none

" I like my comments in italic.
" Comment this line to leave it configurable by the colorscheme.
highlight Comment cterm=italic gui=italic
