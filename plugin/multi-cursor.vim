" Never mess my maps
let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_prev_key='<C-a>'
let g:multi_cursor_next_key='<C-s>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<esc>'

" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  try
    silent! DelimitMateOff
    silent! ALEDisableBuffer
  catch
  endtry
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  try
    silent! DelimitMateOn
    silent! ALEEnableBuffer
  catch
  endtry
endfunction

nnoremap <silent> <esc> :call multiple_cursors#quit()<CR>
