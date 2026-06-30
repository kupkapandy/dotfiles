return {
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true,
  },
  {
    'ntpeters/vim-better-whitespace',
  },
  {
	  "catgoose/nvim-colorizer.lua",
	  event = "BufReadPre",
	  opts = {},
  }
}
