lua << EOF

require'lspconfig'.tsserver.setup{}
require'lspconfig'.eslint.setup{}

EOF

autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll
