return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",

  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  completion = {
        nvim_cmp = true,
        min_chars = 2,
    },
  
  opts = {
    workspaces = {
      {
        name = "Notes",
        path = "~/Notes",
      },
    },

  },
}
