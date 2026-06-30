return{
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local solarized  = {
				normal = {
					a = { fg = "#ebdbb2", bg = "#000000" },
					b = { fg = "#ebdbb2", bg = "#000000" },
					c = { fg = "#ebdbb2", bg = "#000000" },
				},
				insert = {
					a = { fg = "#ebdbb2", bg = "#000000" },
					b = { fg = "#ebdbb2", bg = "#000000" },
					c = { fg = "#ebdbb2", bg = "#000000" },
				},
				visual = {
					a = { fg = "#ebdbb2", bg = "#000000" },
					b = { fg = "#ebdbb2", bg = "#000000" },
					c = { fg = "#ebdbb2", bg = "#000000" },
				},
				replace = {
					a = { fg = "#ebdbb2", bg = "#000000" },
					b = { fg = "#ebdbb2", bg = "#000000" },
					c = { fg = "#ebdbb2", bg = "#000000" },
				},
				command = {
					a = { fg = "#ebdbb2", bg = "#000000" },
					b = { fg = "#ebdbb2", bg = "#000000" },
					c = { fg = "#ebdbb2", bg = "#000000" },
				},
				inactive = {
					a = { fg = "#ebdbb2", bg = "#000000" },
					b = { fg = "#ebdbb2", bg = "#000000" },
					c = { fg = "#ebdbb2", bg = "#000000" },
				},
			}
			require("lualine").setup {
				options = {
					theme = solarized,
					section_separators = { left = '', right = '' },
					component_separators = "",

					icons_enabled = false,
				},
				sections = {
					lualine_a = {'mode'},
					lualine_b = {{
							'diagnostics',
							colored = true,
							diagnostics_color = {
								error = { fg = "#fb4934", bg = "#000000"},
								warn  = { fg = "#fabd2f", bg = "#000000"},
								info  = { fg = "#83a598", bg = "#000000"},
								hint  = { fg = "#b8bb26", bg = "#000000"},
							},
						},
					},
					lualine_c = {},
					lualine_x = {},
					lualine_y = {
						{
							'diff',
							colored = true,
							diff_color = {
								added    = { fg = "#b8bb26", bg = "#000000"},
								modified = { fg = "#fabd2f", bg = "#000000"},
								removed  = { fg = "#fb4934", bg = "#000000"},
							},
						},
					},
					lualine_z = {'branch', 'filename'},
					},
				}
		end,
	},
}
