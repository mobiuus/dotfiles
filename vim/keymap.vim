let mapleader = ","
inoremap <C-q> <ESC>:q<CR>
nnoremap <C-q> :q<CR>
inoremap <C-s> <ESC>:update<CR>
nnoremap <C-s> :update<CR>
inoremap <leader>O <ESC>O
inoremap <leader>o <ESC>o
nnoremap <leader>O O
nnoremap <leader>o o
nnoremap o o<ESC>
nnoremap O O<ESC>
inoremap <leader>u <ESC>:u<CR>i
nnoremap <leader>u :u<CR>
inoremap <M-h> <left> 
inoremap <M-j> <down>
inoremap <M-k> <up>
inoremap <M-l> <right>
inoremap <leader>A <ESC>A
inoremap <leader>cf <ESC>:ClangFormat<CR>i
nnoremap <leader>cf :ClangFormat<CR>
inoremap <leader>rf <ESC>:RustFmt<CR>i
nnoremap <leader>rf :RustFmt<CR>
let g:user_emmet_mode='a'
let g:user_emmet_leader_key='<C-x>'
