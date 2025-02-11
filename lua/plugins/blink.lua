return {
    'saghen/blink.cmp',
    version =  '*', -- 'v0.*',
    dependencies = { 
            {'rafamadriz/friendly-snippets',},
            {"saghen/blink.compat", lazy = true, version = false },
    },

    opts = {
      keymap = { preset = 'default' },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono',
       },
      		sources = {
			default = { "lsp", "path", "snippets", "buffer", "obsidian", "obsidian_new", "obsidian_tags" },

			providers = {
				obsidian = { name = "obsidian", module = "blink.compat.source" },
				obsidian_new = { name = "obsidian_new", module = "blink.compat.source" },
				obsidian_tags = { name = "obsidian_tags", module = "blink.compat.source" },
			},

			cmdline = {},
      },
      signature = { enabled = true },
    },
}
