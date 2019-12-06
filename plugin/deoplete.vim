inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" let g:deoplete#sources = {}
" let g:deoplete#omni_patterns = {}
" let g:deoplete#omni#input_patterns = {}
" let g:deoplete#omni#functions = {}

let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_at_startup  = 1

" [file] candidates are relative to the buffer path
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#auto_completion_start_length = 4

" let g:deoplete#delimiters = ['/', '.', '::', ':', '#', '->']
" let g:deoplete#sources._ = ['omni', 'buffer', 'member', 'tag', 'ultisnips', 'file']

" " let g:deoplete#omni_patterns.php = '\h\w*\|[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
" let g:deoplete#omni_patterns.php = '\w+|[^. \t]->\w*\|\w+::\w*'
" let g:deoplete#omni#input_patterns.php = '\w+|[^. \t]->\w*\|\w+::\w*'

" let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
" let g:deoplete#ignore_sources.php = ['omni', 'phpcd']

" function g:Multiple_cursors_before()
"   let g:deoplete#disable_auto_complete = 1
" endfunction
" function g:Multiple_cursors_after()
"   let g:deoplete#disable_auto_complete = 0
" endfunction

" let g:tern_request_timeout = 1
" let g:tern_show_signature_in_pum = 1

" let g:tern_show_argument_hints = 'no'

" let g:tern#command   = [ 'tern' ]
" let g:tern#arguments = [ '--persistent' ]

" " let g:deoplete#omni#functions.javascript = ['tern#Complete' ]
" " let g:deoplete#omni#functions['javascript.jsx'] = ['tern#Complete' ]

" let g:deoplete#omni#functions.php = []

" " Define keyword
" if !exists('g:deoplete#keyword_patterns')
"     let g:deoplete#keyword_patterns = {}
" endif


" let g:deoplete#keyword_patterns.default = '[a-zA-Z_]\w{2,}?'
