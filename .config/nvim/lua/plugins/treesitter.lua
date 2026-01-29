return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			local treesitter = require("nvim-treesitter.configs")
			treesitter.setup({
				ensure_installed = {
					"c",
					"cpp",
					"make",
					--"asm",
					--"glsl",
				},
				auto_install = false,
				query_linter = {
					enable = true,
					use_virtual_text = true,
					lint_events = { "BufWrite", "CursorHold" },
				},
				highlight = {
					enable = true,
				},
				indent = {
					enable = true,
					disable = { "asm", },
				}
			})
		end,
	},
}
