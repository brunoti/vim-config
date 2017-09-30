" Use 'd' to surround with a Blade directive.
let b:surround_{char2nr("d")} = "@\1Blade directive: @\1 \r @end\1\r\[( \]\\+.*\r\1"
" Some aliases for convenience.
let b:surround_{char2nr("D")} = b:surround_{char2nr("d")}
let b:surround_{char2nr("@")} = b:surround_{char2nr("d")}

let g:surround_{char2nr("b")}  = "{{ \r }}"
let g:surround_{char2nr("n")}  = "{!! \r !!}"
let g:surround_{char2nr("t")}  = "{% \r %}"
let g:surround_{char2nr("\\")} = "\\\"\r\\\""
