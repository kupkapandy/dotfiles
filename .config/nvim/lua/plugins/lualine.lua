return{
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup {
        options = {
          theme = 'gruvbox-material',
          section_separators = { left = '꧁', right = '꧂' },
          component_separators = "|",
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {'filename'},
        },
      }
    end,
  },
}
