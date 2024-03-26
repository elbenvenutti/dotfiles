require("neorg").setup {
  load = {
    ["core.defaults"] = {}, -- Loads default behaviour
    ["core.concealer"] = {
      config = {
        folds = false,
      }
    }, -- Adds pretty icons to your documents
    ["core.dirman"] = { -- Manages Neorg workspaces
      config = {
        default_workspace = "notes",
        workspaces = {
          notes = "~/notes",
        },
      },
    },
    ["core.keybinds"] = {
      config = {
        neorg_leader = "<Leader><Leader>"
      }
    },
    ["core.integrations.telescope"] = {},
  },
}
