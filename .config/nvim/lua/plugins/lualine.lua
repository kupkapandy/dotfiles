return{
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local solarized  = {
				normal = {
					a = { fg = "#073642", bg = "#ffffff" },
					b = { fg = "#073642", bg = "#ffffff" },
					c = { fg = "#073642", bg = "#ffffff" },
				},
				insert = {
					a = { fg = "#073642", bg = "#ffffff" },
					b = { fg = "#073642", bg = "#ffffff" },
					c = { fg = "#073642", bg = "#ffffff" },
				},
				visual = {
					a = { fg = "#073642", bg = "#ffffff" },
					b = { fg = "#073642", bg = "#ffffff" },
					c = { fg = "#073642", bg = "#ffffff" },
				},
				replace = {
					a = { fg = "#073642", bg = "#ffffff" },
					b = { fg = "#073642", bg = "#ffffff" },
					c = { fg = "#073642", bg = "#ffffff" },
				},
				command = {
					a = { fg = "#073642", bg = "#ffffff" },
					b = { fg = "#073642", bg = "#ffffff" },
					c = { fg = "#073642", bg = "#ffffff" },
				},
				inactive = {
					a = { fg = "#073642", bg = "#ffffff" },
					b = { fg = "#073642", bg = "#ffffff" },
					c = { fg = "#073642", bg = "#ffffff" },
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
								error = { fg = "#fb4934", bg = "#ffffff"},
								warn  = { fg = "#fabd2f", bg = "#ffffff"},
								info  = { fg = "#83a598", bg = "#ffffff"},
								hint  = { fg = "#b8bb26", bg = "#ffffff"},
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
								added    = { fg = "#b8bb26", bg = "#ffffff"},
								modified = { fg = "#fabd2f", bg = "#ffffff"},
								removed  = { fg = "#fb4934", bg = "#ffffff"},
							},
						},
					},
					lualine_z = {'branch', 'filename'},
					},
				}
		end,
	},
}
