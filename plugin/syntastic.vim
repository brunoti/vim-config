" let g:syntastic_debug = 3
let g:syntastic_javascript_checkers = ['esvalidate', 'eslint']
let g:syntastic_typescript_checkers = ['tslint', 'tsuquyomi', 'tsc']
let g:tsuquyomi_disable_default_mappings = 1
let g:tsuquyomi_disable_quickfix = 1

let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_phpcs_args = '--standard=PS1,PS2'
let g:syntastic_php_phpmd_args = 'design,unusedcode,naming'

let g:syntastic_ignore_files = ['.blade.php', '.htm', '.twig']

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️ '
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

let g:syntastic_aggregate_errors=1
let g:syntastic_enable_ballons=has('ballon_eval')

let g:syntastic_always_populate_loc_list=0

let g:syntastic_auto_jump=0

let g:syntastic_auto_loc_list=0

let g:syntastic_ignore_files = ['^/usr/', '*node_modules*', '*vendor*', '*build*', '*LOCAL*', '*BASE', '*REMOTE*']

let g:syntastic_mode_map = { 'mode': 'active' }

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
