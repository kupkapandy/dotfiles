return{
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local gruvbox = {
        normal = {
          a = { fg = "#32302f", bg = "#a89984" },
          b = { fg = "#ebdbb2", bg = "#504945" },
          c = { fg = "#32302f", bg = "#282828" },
        },
        insert = {
          a = { fg = "#32302f", bg = "#83a598" },
          b = { fg = "#ebdbb2", bg = "#504945" },
          c = { fg = "#32302f", bg = "#282828" },
        },
        visual = {
          a = { fg = "#32302f", bg = "#fabd2f" },
          b = { fg = "#32302f", bg = "#504945" },
          c = { fg = "#32302f", bg = "#282828" },
        },
        replace = {
          a = { fg = "#32302f", bg = "#fb4934" },
          b = { fg = "#32302f", bg = "#504945" },
          c = { fg = "#32302f", bg = "#282828" },
        },
        command = {
          a = { fg = "#32302f", bg = "#b8bb26" },
          b = { fg = "#32302f", bg = "#504945" },
          c = { fg = "#32302f", bg = "#282828" },
        },
        inactive = {
          a = { fg = "#32302f", bg = "#D3869B" },
          b = { fg = "#32302f", bg = "#504945" },
          c = { fg = "#32302f", bg = "#282828" },
        },
      }
      require("lualine").setup {
        options = {
          theme = gruvbox,
          section_separators = { left = '', right = '' },
          component_separators = "",

          icons_enabled = false,
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
