" Never mess my maps
let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_prev_key='<C-a>'
let g:multi_cursor_next_key='<C-s>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<esc>'

nnoremap <silent> <esc> :call multiple_cursors#quit()<CR>
