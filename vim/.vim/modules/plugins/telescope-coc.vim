if has('nvim')
lua << END
require('telescope').load_extension('coc')
END
nnoremap <leader>fr <cmd>Telescope coc references<cr>
nnoremap <leader>fd <cmd>Telescope coc workspace_diagnostics<cr>
nnoremap <leader>fD <cmd>Telescope coc diagnostics<cr>
endif
