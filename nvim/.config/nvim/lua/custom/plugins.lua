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
       "nvimtools/none-ls.nvim",
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
  { "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>" },
      { "<c-j>" },
      { "<c-k>" },
      { "<c-l>" },
      { "<c-\\>" },
    },
  },
  { "djoshea/vim-autoread", event = "BufEnter" },
  { "easymotion/vim-easymotion", event = "BufEnter" },
  { "jeffkreeftmeijer/vim-numbertoggle", event = "BufEnter" },
  { "junegunn/gv.vim", event = "VimEnter" },
  {
    "mbbill/undotree",
    cmd = {
      "UndotreeFocus",
      "UndotreeHide",
      "UndotreePersistUndo",
      "UndotreeShow",
      "UndotreeToggle",
    },
    init = function()
      require("core.utils").load_mappings "undotree"
    end,
  },
  {
    "mileszs/ack.vim",
    cmd = { "Ack", "AckAdd", "AckFile", "AckFromSearch", "AckHelp", "AckWindow" },
    init = function ()
      require "custom.configs.ack"
    end
  },
  { "Olical/vim-enmasse", event = "BufEnter" },
  { "PeterRincker/vim-argumentative", event = "BufEnter" },
  -- { "sheerun/vim-polyglot", event = "BufEnter" },
  { "tmhedberg/indent-motion", event = "BufEnter" },
  {
    "tpope/vim-abolish",
    -- cmd = { "Abolish", "Subvert" },
    event = { "BufEnter" },
    keys = { "crs", "crm", "crc", "cru", "cr-", "cr." },
    config = function()
      require "custom.configs.abolish"
    end,
  },
  { "tpope/vim-eunuch", event = "VimEnter" },
  { "tpope/vim-fugitive", event = "BufEnter"  },
  { "tpope/vim-obsession", event = "VimEnter" },
  { "tpope/vim-repeat", event = "BufEnter" },
  { "tpope/vim-sensible", event = "VimEnter" },
  { "tpope/vim-sleuth", event = "BufEnter" },
  { "tpope/vim-surround", event = "BufEnter" },
  { "tpope/vim-unimpaired", event = "VimEnter" },
  { "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, cmd = {"Trouble", "TroubleToggle"}},
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- We'd like this plugin to load first out of the rest
    config = true, -- This automatically runs `require("luarocks-nvim").setup()`
  },
  {
    "nvim-neorg/neorg",
    cmd = {"Neorg"},
    dependencies = {
      "luarocks.nvim",
      "nvim-neorg/neorg-telescope",
    },
    init = function()
      require("custom.configs.neorg")
    end,
  },
  {
    "hedyhli/outline.nvim",
    cmd = { "Outline", "OutlineOpen" },
    opts = {
      -- Your setup opts here
    },
  },
  -- copying over from default to disable cmd and override config
  {
    "nvim-tree/nvim-tree.lua",
    init = function()
      require("core.utils").load_mappings "nvimtree"
    end,
    opts = function()
      return require "custom.configs.nvimtree"
    end,
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "nvimtree")
      require("nvim-tree").setup(opts)
    end,
  },
  {
    "antosha417/nvim-lsp-file-operations",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-tree.lua",
    },
    cmd = { "NvimTreeFocus" },
    -- event = { "NvimTreeSetup" },
    config = true,
  },
  {
    "rmagatti/goto-preview",
    keys = { "gpd", "gPd", "gpt", "gpi", "gP", "gpr" },
    config = function()
      require("goto-preview").setup {
        default_mappings = true,
      }
    end
  },
  {
    "nvim-neotest/neotest",
    cmd = { "Neotest" },
    keys = {
      { "<leader>tt", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run File" },
      { "<leader>tT", function() require("neotest").run.run(vim.uv.cwd()) end, desc = "Run All Test Files" },
      { "<leader>tr", function() require("neotest").run.run() end, desc = "Run Nearest" },
      { "<leader>tl", function() require("neotest").run.run_last() end, desc = "Run Last" },
      { "<leader>ts", function() require("neotest").summary.toggle() end, desc = "Toggle Summary" },
      { "<leader>to", function() require("neotest").output.open({ enter = true, auto_close = true }) end, desc = "Show Output" },
      { "<leader>tO", function() require("neotest").output_panel.toggle() end, desc = "Toggle Output Panel" },
      { "<leader>tS", function() require("neotest").run.stop() end, desc = "Stop" },
    },
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-jest",
    },
    config = function()
      require('neotest').setup({
        adapters = {
          require('neotest-jest')({
            jestCommand = "npm test -- --maxWorkers=50% --expand",
            -- jestConfigFile = "custom.jest.config.ts",
            env = {
              CI = true,
              TZ = "UTC",
            },
            cwd = function(path)
              return vim.fn.getcwd()
            end,
          }),
        }
      })
    end
    end,
  },
}

return plugins
