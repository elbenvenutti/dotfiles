local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "eslint", "marksman", "jsonls", "stylelint_lsp", "cssls", "cssmodules_ls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig["ts_ls"].setup {
  init_options = {
    preferences = {
      includeInlayEnumMemberValueHints = false,
      includeInlayFunctionLikeReturnTypeHints = true,
      includeInlayFunctionParameterTypeHints = true,
      includeInlayParameterNameHints = 'all', -- 'none', 'literals', 'all'
      includeInlayParameterNameHintsWhenArgumentMatchesName = false,
      includeInlayPropertyDeclarationTypeHints = true,
      includeInlayVariableTypeHints = true,
    },
  },
  on_attach = function(client, bufnr)
    on_attach(client, bufnr)

    -- vim.g.inlay_hints_visible = true
    -- vim.lsp.inlay_hint.enable()
  end,
  capabilities = capabilities,
}

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
    command = "EslintFixAll",
  }
)
