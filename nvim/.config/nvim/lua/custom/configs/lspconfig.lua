local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "eslint", "marksman"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig["tailwindcss"].setup {
  hovers = true,
  suggestions = true,
  root_dir = function(fname)
    local root_pattern = require("lspconfig").util.root_pattern(
      "tailwind.config.mjs",
      "tailwind.config.cjs",
      "tailwind.config.js"
      -- "postcss.config.js"
    )
    return root_pattern(fname)
  end
}

vim.api.nvim_create_autocmd(
  {"BufWritePre"},
  {
    pattern = {"*.tsx","*.ts","*.jsx","*.js"},
    command = "EslintFixAll"
  }
)
