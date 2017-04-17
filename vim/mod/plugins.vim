" CtrlP (X terminal bindings)
"
" Ctrl+up	: buffer list
" Ctrl+down	: ctags list
" Ctrl+left	: file list from current dir
" Ctrl+right	: file list (project dir)
nnoremap <silent> <Esc>Oa :<C-u>CtrlPBuffer<cr>
nnoremap <silent> <Esc>Ob :<C-u>CtrlPTag<cr>
nnoremap <silent> <Esc>Oc :<C-u>CtrlP .<cr>
nnoremap <silent> <Esc>Od :<C-u>CtrlP<cr>

" Other console bindings (compatibility)
nnoremap <silent> <Esc>[A :<C-u>CtrlPBuffer<cr>
nnoremap <silent> <Esc>[1;5A :<C-u>CtrlPBuffer<cr>
nnoremap <silent> <Esc>[B :<C-u>CtrlPTag<cr>
nnoremap <silent> <Esc>[1;5B :<C-u>CtrlPTag<cr>
nnoremap <silent> <Esc>[C :<C-u>CtrlP .<cr>
nnoremap <silent> <Esc>[1;5C :<C-u>CtrlP .<cr>
nnoremap <silent> <Esc>[D :<C-u>CtrlP<cr>
nnoremap <silent> <Esc>[1;5D :<C-u>CtrlP<cr>

" Fix home/end key bindings
" nnoremap <silent> <Esc>[7~ ^
" nnoremap <silent> <Esc>[8~ $
" inoremap <silent> <Esc>[7~ <Esc>^i
" inoremap <silent> <Esc>[8~ <Esc>$a

let g:ctrlp_regexp = 1
let g:ctrlp_by_filename = 1
"let g:ctrlp_custom_ignore = {
" \ 'dir': '\v[\/]\.(git|hg|svn)$|\v[\/](tmp|bak|old|build.*|html)$',
" \ 'file': '\v\.(exe|so|dll|zip|o|a|obj|swp|hi|core|xls|doc|pdf|png|aux|idx|
"      	\ilg|ind|lof|lot|toc)$',
" \ }
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
\ --ignore ".git"
\ --ignore ".svn"
\ --ignore ".hg"
\ --ignore ".*"
\ --ignore "*.exe"
\ --ignore "*.dll"
\ --ignore "*.so"
\ --ignore "*.[ao]"
\ --ignore "*.obj"
\ --ignore "*.zip"
\ --ignore "*.sw[p-z]"
\ --ignore "*.hi"
\ --ignore "*.core"
\ --ignore "*.xls"
\ --ignore "*.doc"
\ --ignore "*.pdf"
\ --ignore "*.png"
\ --ignore "*.aux"
\ --ignore "*.idx"
\ --ignore "*.ilg"
\ --ignore "*.ind"
\ --ignore "*.lo[cft]"
\ -g ""'


" Fugitive
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>gr :Gremove<CR>
augroup fugitive_tweaks
	autocmd!
	autocmd FileType gitcommit nmap <buffer> U :Git checkout -- <C-r><C-g><CR>
	autocmd BufReadPost fugitive://* set bufhidden=delete
augroup end

" Airline
let g:airline_left_sep='>'
let g:airline_right_sep='<'
let g:airline#extensions#csv#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
set laststatus=2