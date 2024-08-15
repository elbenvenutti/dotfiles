local M = {}

M.general = {
  n = {
    ["<leader>zi"] = { ":setlocal foldmethod=indent<CR>", "Set foldmethod indent"},
    ["<leader>zs"] = { ":setlocal foldmethod=expr<CR>:setlocal foldexpr=nvim_treesitter#foldexpr()<CR>", "Set foldmethod expr + treesitter"},
    ["<leader>zm"] = { ":setlocal foldmethod=manual<CR>", "Set foldmethod manual"},
    ["]w"] = { ":tabnext<CR>", "Next tab"},
    ["[w"] = { ":tabnext<CR>", "Previous tab"},
    ["00"] = { "^", "Go to first nonspace character"},
    ["<C-i>"] = { "<C-i>", opts = { noremap = true } },
  },
  i = {
    [":w<CR>"] = { "<esc>:w<CR>"},
    [":wq<CR>"] = { "<esc>:wq<CR>"}
  }
}

M.disabled = {
  i = {
    ["<C-h>"] = "",
    ["<C-l>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
  },
  n = {
    ["<C-h>"] = "",
    ["<C-l>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
    ["<leader>x"] = "",
    ["<tab>"] = "",
    ["<S-tab>"] = "",
  },
}

M.telescope = {
  plugin = true,

  n = {
    ["<c-p>"] = { "<cmd> Telescope find_files <CR>", "Find files" },
    ["gr"] = { "<cmd> Telescope lsp_references <CR>", "LSP references" },
  }
}

M.undotree = {
  plugin = true,

  n = {
    ["<leader>u"] = { "<cmd> UndotreeToggle <CR>", "Toggle UndoTree" }
  }
}

M.trouble = {
  -- plugin = true,

  n = {
    ["<leader>xx"] = {function() require("trouble").toggle() end, "toggle trouble",},
    ["<leader>xw"] = {function() require("trouble").open("workspace_diagnostics") end, "workspace diagnostics",},
    ["<leader>xd"] = {function() require("trouble").open("document_diagnostics") end, "document diagnostics",},
    ["<leader>xq"] = {function() require("trouble").open("quickfix") end, "quickfix list",},
    ["<leader>xl"] = {function() require("trouble").open("loclist") end, "location list",},
  }
}

M.lspconfig = {
  plugin = true,

  n = {
    ["<leader>ra"] = {
      function()
        vim.lsp.buf.rename()
      end,
      "LSP rename",
    },
  }

}

M.outline = {
  plugin = true,

  n = {
    ["<leader>o"] = { "<cmd> Outline <CR>", "Toggle Outline", }
  }
}

return M
