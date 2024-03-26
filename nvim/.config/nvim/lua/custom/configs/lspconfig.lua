local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "metals", "tsserver", "eslint", "tailwindcss", "marksman"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

vim.api.nvim_create_autocmd(
  {"BufWritePre"},
  {
    pattern = {"*.tsx","*.ts","*.jsx","*.js"},
    command = "EslintFixAll"
  }
)
