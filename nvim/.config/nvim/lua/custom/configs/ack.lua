if vim.fn.executable('ag') == 1 then vim.g.ackprg="ag --vimgrep" end
if vim.fn.executable('rg') == 1 then vim.g.ackprg="rg --vimgrep" end
