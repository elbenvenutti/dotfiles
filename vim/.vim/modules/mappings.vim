" Sane person split navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <silent> <leader>u :UndotreeToggle<CR>
nnoremap <silent> <leader>n :NERDTreeToggle<CR>

nnoremap K i<CR><esc>

" workaround capslock as escape timeouts
inoremap :w<CR> <esc>:w<CR>
inoremap :wq<CR> <esc>:wq<CR>
inoremap :q<CR> <esc>:q<CR>
inoremap :qa<CR> <esc>:qa<CR>

"foldmethods
nnoremap <leader>zi :setlocal foldmethod=indent<cr>
nnoremap <leader>zs :setlocal foldmethod=syntax<cr>
nnoremap <leader>zm :setlocal foldmethod=manual<cr>

nmap <leader>l :call Light()<cr>
nmap <leader>0 :redraw!<cr>
