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
        "stylua",

        "sonarlint-language-server",

        "typescript-language-server",
        "eslint-lsp",

        "html-lsp",

        "stylelint-lsp",
        "css-lsp",
        "cssmodules-language-server",

        "tailwindcss-language-server",

        "json-lsp",

        "marksman",
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
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },
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
    lazy = false,
    -- cmd = { "NvimTreeFocus" },
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
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    cmd = {
      "TSContextEnable",
      "TSContextDisable",
      "TSContextToggle",
    },
    event = {
      "BufEnter"
    }
  },
  {
    "https://gitlab.com/schrieveslaach/sonarlint.nvim.git",
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    event = "User FilePost",
    config = function()
      require("sonarlint").setup({
        server = {
          cmd = {
            '/Users/ismaelperez/.local/share/nvim/mason/packages/sonarlint-language-server/sonarlint-language-server',
            -- Ensure that sonarlint-language-server uses stdio channel
            '-stdio',
            '-analyzers',
            -- paths to the analyzers you need, using those for python and java in this example
            -- vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarpython.jar"),
            -- vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarcfamily.jar"),
            -- vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarjava.jar"),
            -- vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarjs.jar"),
            vim.fn.expand("/Users/ismaelperez/.local/share/nvim/mason/share/sonarlint-analyzers/sonar/sonarjs.jar"),
            vim.fn.stdpath "data" .. "/mason/share/sonarlint-analyzers/sonarjava.jar",
            vim.fn.stdpath "data" .. "/mason/share/sonarlint-analyzers/sonarjs.jar",
          }
        },
        filetypes = {
          -- Tested and working
          -- 'python',
          -- 'cpp',
          -- 'java',
          'javascript',
          'typescript',
          'typescriptreact',
          'scala',
          'sbt',
          'java'
        }
      })
    end
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    init = function ()
      vim.g.codeium_disable_bindings = 1
    end,
    config = function()
      vim.keymap.set('i', '<M-CR>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
      vim.keymap.set('i', '<M-Tab>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
      vim.keymap.set('i', '<M-S-Tab>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
      vim.keymap.set('i', '<M-Esc>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    end
  },
  {
    url = "https://gitlab.com/HiPhish/rainbow-delimiters.nvim.git" ,
    lazy = false
  },
  {
    "scalameta/nvim-metals",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "neovim/nvim-lspconfig",
    },
    ft = { "scala", "sbt", "java" },
    opts = function()
      local metals_config = require("metals").bare_config()

      metals_config.settings = {
        inlayHints = {
          hintsInPatternMatch = { enable = true },
          implicitArguments = { enable = true },
          implicitConversions = { enable = false },
          inferredTypes = { enable = true },
          typeParameters = { enable = true },
        }
      }
      metals_config.init_options.statusBarProvider = "off"
      metals_config.on_attach = function(client, bufnr)
        local augroup = vim.api.nvim_create_augroup('AutoFormatting', {})
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
          callback = function()
            vim.lsp.buf.format()
          end,
        })
      end

      return metals_config
    end,
    config = function(self, metals_config)
      local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
      vim.api.nvim_create_autocmd("FileType", {
        pattern = self.ft,
        callback = function()
          require("metals").initialize_or_attach(metals_config)
        end,
        group = nvim_metals_group,
      })
    end
  },
  {
    "j-hui/fidget.nvim",
    event = "User FilePost",
    opts = {
      notification = {
        window = {
          winblend = 0,
        },
      },
    }
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      --"nvim-telescope/telescope-ui-select.nvim"
    },
    cmd = "Telescope",
    init = function()
      require("core.utils").load_mappings "telescope"
    end,
    opts = function()
      return require "plugins.configs.telescope"
    end,
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "telescope")
      local telescope = require "telescope"
      telescope.setup(opts)

      -- load extensions
      for _, ext in ipairs(opts.extensions_list) do
        telescope.load_extension(ext)
      end
      -- telescope.load_extension("ui-select")
    end,
  },
  {
    'stevearc/dressing.nvim',
    opts = {},
    lazy = false
  }
}

return plugins
