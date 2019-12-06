set background=dark

" let g:hybrid_custom_term_colors = 1
" let g:hybrid_reduced_contrast = 0
" colorscheme hybrid

colorscheme hybrid

" I like my comments in italic.
" Comment this line to leave it configurable by the colorscheme.
highlight Comment cterm=italic gui=italic

" Make the SignColumn background color always "whithout color" so it defaults
" to the current colorscheme background
highlight SignColumn guibg=none

" Php better syntax for PHPDocs with some customizations for italic and colors
function! PhpSyntaxOverride()
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
    if g:colors_name == "gruvbox"
        " hi phpDocTags cterm=italic gui=italic guifg=#8ec07c
        " hi phpDocParam cterm=italic gui=italic guifg=#fabd2f
    endif
    if g:colors_name == "one"
        " hi phpDocTags cterm=italic gui=italic guifg=#98C379
        " hi phpDocParam cterm=italic gui=italic guifg=#56B6C2
    endif
    if g:colors_name == "hybrid"
        hi phpDocTags cterm=italic gui=italic guifg=#8ABEB7
        hi phpDocParam cterm=italic gui=italic guifg=#DE935F
    endif
    if g:colors_name == "nova"
        hi phpDocTags cterm=italic gui=italic guifg=#8384E3
        hi phpDocParam cterm=italic gui=italic guifg=#93D492
    endif
endfunction

augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END
