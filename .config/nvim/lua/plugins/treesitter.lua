return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ':TSUpdate',
		config = function()
			local treesitter = require("nvim-treesitter")
			treesitter.setup({
				install_dir = vim.fn.stdpath('data') .. '/site'
			})

			treesitter.install({
				'make',
				'c',
				'cpp',
			})
		end,
	},
}
