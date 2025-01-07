return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "Notes",
        path = "~/Notes",
      },
    },

  daily_notes = {
    folder = "daily",
    date_format = "%Y-%m-%d",
    alias_format = "%B %-d, %Y",
    default_tags = { "daily" },
    template = nil
  },

  completion = { -- verify this works with blink
    nvim_cmp = false,
    min_chars = 2,
  },

  mappings = {
    -- Smart action depending on context, either follow link or toggle checkbox.
    ["<leader><cr>"] = { action = function()
        return require("obsidian").util.smart_action()
      end, opts = { buffer = true, expr = true },
    }
  },

  new_notes_location = "notes_subdir", -- notes_subdir or current_subdir
  preferred_link_style = "wiki",  -- Either 'wiki' or 'markdown'.

  templates = {
    folder = "assets/templates",
    date_format = "%Y-%m-%d",
    time_format = "%H:%M",
    substitutions = {}, -- if you want to add custom variables
  },

  -- customize external url handling
  ---@param url string
  follow_url_func = function(url)
    vim.ui.open(url) -- need Neovim 0.10.0+
  end,

  -- customize image handling
  ---@param img string
  follow_img_func = function(img)
    vim.fn.jobstart { "qlmanage", "-p", img }  -- Mac OS quick look preview
    -- vim.fn.jobstart({"xdg-open", url})  -- linux
    -- vim.cmd(':silent exec "!start ' .. url .. '"') -- Windows
  end,


  picker = {
    name = "telescope.nvim",
    note_mappings = {
      new = "<C-x>",
      insert_link = "<C-l>",
    },
    tag_mappings = {
      tag_note = "<C-x>",
      insert_tag = "<C-l>",
    },
  },

  search_max_lines = 1000,

  -- Optional, configure additional syntax highlighting / extmarks.
  -- This requires you have `conceallevel` set to 1 or 2. See `:help conceallevel` for more details.
  ui = {
    enable = false,  -- set to false to disable all additional syntax features
    update_debounce = 200,  -- update delay after a text change (in milliseconds)
    max_file_length = 5000,  -- disable UI features for files with more than this many lines
    -- Define how various check-boxes are displayed
    checkboxes = {
      -- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.
      [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
      ["x"] = { char = "", hl_group = "ObsidianDone" },
      [">"] = { char = "", hl_group = "ObsidianRightArrow" },
      ["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
      ["!"] = { char = "", hl_group = "ObsidianImportant" },
      -- Replace the above with this if you don't have a patched font:
      -- [" "] = { char = "☐", hl_group = "ObsidianTodo" },
      -- ["x"] = { char = "✔", hl_group = "ObsidianDone" },

      -- You can also add more custom ones...
    },
    -- Use bullet marks for non-checkbox lists.
    bullets = { char = "•", hl_group = "ObsidianBullet" },
    external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
    -- Replace the above with this if you don't have a patched font:
    -- external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
    reference_text = { hl_group = "ObsidianRefText" },
    highlight_text = { hl_group = "ObsidianHighlightText" },
    tags = { hl_group = "ObsidianTag" },
    block_ids = { hl_group = "ObsidianBlockID" },
    hl_groups = {
      -- The options are passed directly to `vim.api.nvim_set_hl()`. See `:help nvim_set_hl`.
      ObsidianTodo = { bold = true, fg = "#f78c6c" },
      ObsidianDone = { bold = true, fg = "#89ddff" },
      ObsidianRightArrow = { bold = true, fg = "#f78c6c" },
      ObsidianTilde = { bold = true, fg = "#ff5370" },
      ObsidianImportant = { bold = true, fg = "#d73128" },
      ObsidianBullet = { bold = true, fg = "#89ddff" },
      ObsidianRefText = { underline = true, fg = "#c792ea" },
      ObsidianExtLinkIcon = { fg = "#c792ea" },
      ObsidianTag = { italic = true, fg = "#89ddff" },
      ObsidianBlockID = { italic = true, fg = "#89ddff" },
      ObsidianHighlightText = { bg = "#75662e" },
    },
  },

  attachments = { img_folder = "assets/attachments", }, -- attachment location
}
}
