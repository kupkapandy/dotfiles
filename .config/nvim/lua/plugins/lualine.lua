return{
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local solarized  = {
				normal = {
					a = { fg = "#ebdbb2", bg = "#1d2021" },
					b = { fg = "#ebdbb2", bg = "#1d2021" },
					c = { fg = "#ebdbb2", bg = "#1d2021" },
				},
				insert = {
					a = { fg = "#ebdbb2", bg = "#1d2021" },
					b = { fg = "#ebdbb2", bg = "#1d2021" },
					c = { fg = "#ebdbb2", bg = "#1d2021" },
				},
				visual = {
					a = { fg = "#ebdbb2", bg = "#1d2021" },
					b = { fg = "#ebdbb2", bg = "#1d2021" },
					c = { fg = "#ebdbb2", bg = "#1d2021" },
				},
				replace = {
					a = { fg = "#ebdbb2", bg = "#1d2021" },
					b = { fg = "#ebdbb2", bg = "#1d2021" },
					c = { fg = "#ebdbb2", bg = "#1d2021" },
				},
				command = {
					a = { fg = "#ebdbb2", bg = "#1d2021" },
					b = { fg = "#ebdbb2", bg = "#1d2021" },
					c = { fg = "#ebdbb2", bg = "#1d2021" },
				},
				inactive = {
					a = { fg = "#ebdbb2", bg = "#1d2021" },
					b = { fg = "#ebdbb2", bg = "#1d2021" },
					c = { fg = "#ebdbb2", bg = "#1d2021" },
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
								error = { fg = "#fb4934", bg = "#1d2021"},
								warn  = { fg = "#fabd2f", bg = "#1d2021"},
								info  = { fg = "#83a598", bg = "#1d2021"},
								hint  = { fg = "#b8bb26", bg = "#1d2021"},
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
								added    = { fg = "#b8bb26", bg = "#1d2021"},
								modified = { fg = "#fabd2f", bg = "#1d2021"},
								removed  = { fg = "#fb4934", bg = "#1d2021"},
							},
						},
					},
					lualine_z = {'branch', 'filename'},
					},
				}
		end,
	},
}
