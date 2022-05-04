if has('nvim')
nnoremap <C-p> <cmd>Telescope git_files<cr>
nnoremap <leader>ff <cmd>Telescope git_files<cr>
nnoremap <leader>fF <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap gr <cmd>Telescope lsp_references<cr>
nnoremap gd <cmd>Telescope lsp_definitions<cr>
nnoremap gy <cmd>Telescope lsp_type_definitions<cr>
nnoremap gi <cmd>Telescope lsp_implementations<cr>
nnoremap gds <cmd>Telescope lsp_document_symbols<cr>
nnoremap gws <cmd>Telescope lsp_workspace_symbols<cr>

endif
