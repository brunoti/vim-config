let s:hidden_all = 0

function! ClearInterface()
  " set noshowmode
  set noruler
  set laststatus=0
  set noshowcmd
  set showtabline=0
endfunction

function! RestoreInterface()
    " set showmode
    set ruler
    set laststatus=2
    set showtabline=1
    set showcmd
endfunction

function! ToggleClearInterface()
  if s:hidden_all == 0
    let s:hidden_all = 1
    call ClearInterface()
  else
    let s:hidden_all = 0
    call RestoreInterface()
  endif
endfunction

" nnoremap <S-h> :call ToggleClearInterface()<CR>

" autocmd BufNewFile,BufRead,WinEnter,VimEnter * silent call ClearInterface()
