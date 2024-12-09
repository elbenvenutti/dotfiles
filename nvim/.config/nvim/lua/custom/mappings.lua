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

    ["<leader>i"] = {
      function()
        vim.g.inlay_hints_visible = true
        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({0}),{0})
      end,
      "Toggle Inlay Hints"
    },
  }

}

M["nvim-metals"] = {
  plugin = false,

  n = {
    ["gD"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      "LSP declaration",
    },

    ["gd"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "LSP definition",
    },

    ["K"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },

    ["gi"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "LSP implementation",
    },

    ["<leader>ls"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "LSP signature help",
    },

    ["<leader>D"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "LSP definition type",
    },

    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },

    ["gr"] = {
      function()
        vim.lsp.buf.references()
      end,
      "LSP references",
    },

    ["<leader>lf"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Floating diagnostic",
    },

    ["[d"] = {
      function()
        vim.diagnostic.goto_prev { float = { border = "rounded" } }
      end,
      "Goto prev",
    },

    ["]d"] = {
      function()
        vim.diagnostic.goto_next { float = { border = "rounded" } }
      end,
      "Goto next",
    },

    ["<leader>q"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "Diagnostic setloclist",
    },

    ["<leader>wa"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "Add workspace folder",
    },

    ["<leader>wr"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "Remove workspace folder",
    },

    ["<leader>wl"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "List workspace folders",
    },

    ["<leader>ra"] = {
      function()
        vim.lsp.buf.rename()
      end,
      "LSP rename",
    },

    ["<leader>i"] = {
      function()
        vim.g.inlay_hints_visible = true
        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({0}),{0})
      end,
      "Toggle Inlay Hints"
    },
  },

  v = {
    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
  },
}
M.outline = {
  -- plugin = true,

  n = {
    ["<leader>o"] = { "<cmd> Outline <CR>", "Toggle Outline", }
  }
}

M.neotest = {
  plugin = false,

  n = {
     ["<leader>tt"] = {function() require("neotest").run.run(vim.fn.expand("%")) end, "Run File",},
     ["<leader>tT"] = {function() require("neotest").run.run(vim.uv.cwd()) end, "Run All Test Files",},
     ["<leader>tr"] = {function() require("neotest").run.run() end, "Run Nearest",},
     ["<leader>tl"] = {function() require("neotest").run.run_last() end, "Run Last",},
     ["<leader>ts"] = {function() require("neotest").summary.toggle() end, "Toggle Summary",},
     ["<leader>to"] = {function() require("neotest").output.open({ enter = true, auto_close = true }) end, "Show Output",},
     ["<leader>tO"] = {function() require("neotest").output_panel.toggle() end, "Toggle Output Panel",},
     ["<leader>tS"] = {function() require("neotest").run.stop() end, "Stop", },
  }
}

return M
