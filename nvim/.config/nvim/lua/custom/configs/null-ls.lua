local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
   formatting.stylua,

   lint.todo_comments,

   null_ls.builtins.code_actions.gitsigns,
   null_ls.builtins.code_actions.refactoring,
   null_ls.builtins.formatting.prettier,
}

null_ls.setup {
   debug = true,
   sources = sources,
}
