" The classic one
imap jj <esc>
imap kk <esc>

" Emmet re-mapping because changing using the plugin variables break
" everything sometimes
imap <C-j> <C-y>,
vmap <C-j> <C-y>,

" NERDTree mappings
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-t> :NERDTreeFind<CR>

" Cabs to avoid errors on saving, quiting
cab W  w
cab Wq wq
cab Wqa wqa
cab WqA wqa
cab WQa wqa
cab WQA wqa
cab wQA wqa
cab wqA wqa
cab wQ wq
cab WA wa
cab Q  q
cab Qa  qa

" Open splits
nmap <leader>vs :vsplit<cr>
nmap <leader>sp :split<cr>

" Window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Tab navigation
map <silent><S-h> :tabprevious<CR>
map <silent><S-l> :tabnext<CR>

" Remove vim anoyances
map K <nop>
map Q <nop>
map <F1> <nop>

" Clear Search
map <silent><leader><cr> :noh<cr>
map <silent><space><space> :noh<cr>

" Join and stay quiet!
nnoremap J mzJ`z

" Go to the search
nnoremap n nzz
nnoremap } }zz

" Invert 'go to begin'
nnoremap 0 ^
nnoremap ^ 0

" Invert 'go to end'
nnoremap $ g$
nnoremap g$ $

" Indent the everthing!
map F gg=G''

" Remove the Windows ^M - when the encodings gets messed up
noremap <leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Copy the current file path
nmap <leader>f :let @+ = expand("%")<CR>

" Toogle line number
map <leader>n :set number! <CR>

" Visual Mode indentation without loosing selection
vnoremap < <gv
vnoremap > >gv

" Maps for more familiar indentation mappings with TAB
nnoremap <S-TAB> <<
nnoremap <TAB> >>
imap <S-TAB> <C-d>
imap <TAB> <C-t>

" CamelCase motion with shift+{w,b}
map <S-W> <Plug>CamelCaseMotion_w
map <S-B> <Plug>CamelCaseMotion_b
map <S-E> <Plug>CamelCaseMotion_e

" The beautifier for each file type
autocmd FileType javascript   noremap  <buffer> <C-f> :call JsBeautify()<CR>
autocmd FileType json         noremap  <buffer> <C-f> :call JsonBeautify()<CR>
autocmd FileType jsx          noremap  <buffer> <C-f> :call JsxBeautify()<CR>
autocmd FileType html         noremap  <buffer> <C-f> :call HtmlBeautify()<CR>
autocmd FileType css          noremap  <buffer> <C-f> :call CSSBeautify()<CR>gv
autocmd FileType javascript   vnoremap <buffer> <C-f> :call RangeJsBeautify()<CR>gv
autocmd FileType json         vnoremap <buffer> <C-f> :call RangeJsonBeautify()<CR>gv
autocmd FileType jsx          vnoremap <buffer> <C-f> :call RangeJsxBeautify()<CR>gv
autocmd FileType html         vnoremap <buffer> <C-f> :call RangeHtmlBeautify()<CR>gv
autocmd FileType css          vnoremap <buffer> <C-f> :call RangeCSSBeautify()<CR>gv

" Indent and keep selection
vmap = =gv

" Tabularize map helpers
nnoremap <leader>a= :Tabularize /=<CR>
vnoremap <leader>a= :Tabularize /=<CR>
vnoremap <leader>a> :Tabularize /=><CR>
nnoremap <leader>a> :Tabularize /=><CR>
nnoremap <leader>a: :Tabularize /:\zs<CR>
vnoremap <leader>a: :Tabularize /:\zs<CR>


" Never jump lines
map k gk
map j gj

" Go to the first caracter of the line not the beginning

call togglebg#map("<F5>")
