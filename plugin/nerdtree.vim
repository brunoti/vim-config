" Close Vim if the only window alive is NERDTree
autocmd bufenter * call CloseNERDTreeIfIsLastWindow()
function! CloseNERDTreeIfIsLastWindow()
  if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree())
    q
  endif
endfunction

" Open NERDTree if try to opens a folder with vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'NERDTreeFocus' | endif

