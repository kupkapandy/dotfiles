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
    'norcalli/nvim-colorizer.lua',
    config = function()
      require("colorizer").setup({
        '*',
      })
    end,
  },
}
