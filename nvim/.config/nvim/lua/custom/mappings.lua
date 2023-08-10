local M = {}

M.general = {
  n = {
    ["<leader>zi"] = { ":setlocal foldmethod=indent<CR>", "Set foldmethod indent"},
    ["<leader>zs"] = { ":setlocal foldmethod=syntax<CR>", "Set foldmethod syntax"},
    ["<leader>zm"] = { ":setlocal foldmethod=manual<CR>", "Set foldmethod manual"},
    ["]w"] = { ":tabnext<CR>", "Next tab"},
    ["[w"] = { ":tabnext<CR>", "Previous tab"},
    ["00"] = { "^", "Go to first nonspace character"},
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
  }
}

M.telescope = {
  plugin = true,

  n = {
    ["<c-p>"] = { "<cmd> Telescope find_files <CR>", "Find files" }
  }
}

M.undotree = {
  plugin = true,

  n = {
    ["<leader>u"] = { "<cmd> UndotreeToggle <CR>", "Toggle UndoTree" }
  }
}

return M
