let g:tsuquyomi_disable_quickfix = 1

autocmd FileType typescript setlocal completeopt+=menu,preview

autocmd FileType typescript nnoremap <buffer> <leader>tR :TsuRenameSymbolC<CR>
autocmd FileType typescript nnoremap <buffer> <leader>td :TsuDefinition<CR>
autocmd FileType typescript nnoremap <buffer> <leader>tD :TsuTypeDefinition<CR>
autocmd FileType typescript nnoremap <buffer> <leader>tr :TsuReferences<CR>
autocmd FileType typescript nnoremap <buffer> <leader>tq :TsuQuickFix<CR>
autocmd FileType typescript nnoremap <buffer> <leader>tt : <C-u>echo tsuquyomi#hint()<CR>
