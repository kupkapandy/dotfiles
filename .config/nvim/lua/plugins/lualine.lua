return{
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local solarized  = {
				normal = {
					a = { fg = "#ebdbb2", bg = "#32302f" },
					b = { fg = "#ebdbb2", bg = "#32302f" },
					c = { fg = "#ebdbb2", bg = "#32302f" },
				},
				insert = {
					a = { fg = "#ebdbb2", bg = "#32302f" },
					b = { fg = "#ebdbb2", bg = "#32302f" },
					c = { fg = "#ebdbb2", bg = "#32302f" },
				},
				visual = {
					a = { fg = "#ebdbb2", bg = "#32302f" },
					b = { fg = "#ebdbb2", bg = "#32302f" },
					c = { fg = "#ebdbb2", bg = "#32302f" },
				},
				replace = {
					a = { fg = "#ebdbb2", bg = "#32302f" },
					b = { fg = "#ebdbb2", bg = "#32302f" },
					c = { fg = "#ebdbb2", bg = "#32302f" },
				},
				command = {
					a = { fg = "#ebdbb2", bg = "#32302f" },
					b = { fg = "#ebdbb2", bg = "#32302f" },
					c = { fg = "#ebdbb2", bg = "#32302f" },
				},
				inactive = {
					a = { fg = "#ebdbb2", bg = "#32302f" },
					b = { fg = "#ebdbb2", bg = "#32302f" },
					c = { fg = "#ebdbb2", bg = "#32302f" },
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
								error = { fg = "#fb4934", bg = "#32302f"},
								warn  = { fg = "#fabd2f", bg = "#32302f"},
								info  = { fg = "#83a598", bg = "#32302f"},
								hint  = { fg = "#b8bb26", bg = "#32302f"},
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
								added    = { fg = "#b8bb26", bg = "#32302f"},
								modified = { fg = "#fabd2f", bg = "#32302f"},
								removed  = { fg = "#fb4934", bg = "#32302f"},
							},
						},
					},
					lualine_z = {'branch', 'filename'},
					},
				}
		end,
	},
}
