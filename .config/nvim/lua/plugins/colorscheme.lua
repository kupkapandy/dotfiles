return {
  "lifepillar/vim-solarized8",
  branch = "neovim",
  priority = 1000,
  config = function()
    vim.o.termguicolors = true
    vim.opt.background = 'light'
    vim.g.solarized_visibility = 'low'

    vim.cmd("colorscheme solarized8")
  end,
}
