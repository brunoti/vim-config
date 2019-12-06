let g:lightline = {}
let g:lightline.colorscheme  = 'one'
" let g:lightline.colorscheme  = 'hybrid'
" let g:lightline.colorscheme  = 'neodark'
" let g:lightline.separator    = {'left': '', 'right': '' }
" let g:lightline.subseparator = { 'left': '', 'right': '' }

let g:lightline.component = {}
let g:lightline.component_function = {}

let g:lightline.component_function.gitbranch = 'fugitive#head'
let g:lightline.component.tagbar = '%{tagbar#currenttag("%s", "")}'
let g:lightline.component.gutentags = '%{gutentags#statusline()}'
let g:lightline.component.fugitive = '%{fugitive#statusline()}'

let g:lightline.active = { 'left' : [ [ 'mode', 'paste' ], ['gitbranch', 'readonly', 'filename', 'modified'], ['tagbar'] ] }


