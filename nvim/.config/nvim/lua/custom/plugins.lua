local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",
        "scala",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
     dependencies = {
       "jose-elias-alvarez/null-ls.nvim",
       config = function()
         require "custom.configs.null-ls"
       end,
     },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "lua-language-server",
        "typescript-language-server",
        "stylua"
      },
    },
  },
  {
    "bkad/CamelCaseMotion",
    event = "BufEnter",
    config = function()
      vim.fn["camelcasemotion#CreateMotionMappings"]('<leader>')
    end,
  },
  { "christoomey/vim-tmux-navigator", event = "VimEnter" },
  { "djoshea/vim-autoread", event = "BufEnter" },
  { "easymotion/vim-easymotion", event = "BufEnter" },
  { "jeffkreeftmeijer/vim-numbertoggle", event = "BufEnter" },
  { "junegunn/gv.vim", event = "VimEnter" },
  {
    "mbbill/undotree",
    event = "BufEnter",
    init = function()
      require("core.utils").load_mappings "undotree"
    end,
  },
  {
    "mileszs/ack.vim",
    event = "VimEnter",
    init = function ()
      require "custom.configs.ack"
    end
  },
  { "Olical/vim-enmasse", event = "BufEnter" },
  { "PeterRincker/vim-argumentative", event = "BufEnter" },
  -- { "sheerun/vim-polyglot", event = "BufEnter" },
  { "tmhedberg/indent-motion", event = "BufEnter" },
  { "tpope/vim-eunuch", event = "VimEnter" },
  { "tpope/vim-fugitive", event = "BufEnter"  },
  { "tpope/vim-obsession", event = "VimEnter" },
  { "tpope/vim-repeat", event = "BufEnter" },
  { "tpope/vim-sensible", event = "VimEnter" },
  { "tpope/vim-sleuth", event = "BufEnter" },
  { "tpope/vim-surround", event = "BufEnter" },
  { "tpope/vim-unimpaired", event = "VimEnter" },
}

return plugins
