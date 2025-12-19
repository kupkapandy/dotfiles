return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    enabled = false,
    config = function()
      require("kanagawa").setup({
        compile = false,
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = { bold = true },
        keywordStyle = { italic = true, bold = true },
        statementStyle = { bold = true },
        typeStyle = { bold = true },
        transparent = false,
        dimInactive = false,
        terminalColors = true,
        colors = {
          palette = {
            sumiInk0 = "#000000",
          },
          theme = {
            dragon = {
              ui = {
                bg = "#000000",
                bg_p1 = "#000000",
                float = "#000000",
              },
              syn = {
                string = "#00FF87",
                functionName = "#80FFFF",
                keyword = "#FF75B5",
                statement = "#FFB86C",
              },
            },
          },
        },
        overrides = function(colors)
          return {
            Normal = { bg = "#000000" },
            NormalNC = { bg = "#000000" },
            NormalFloat = { bg = "#000000" },
            FloatBorder = { bg = "#000000" },
            TelescopeNormal = { bg = "#000000" },
            Comment = { fg = colors.palette.oniViolet, italic = true },
            Function = { fg = "#80FFFF", bold = true },
            Keyword = { fg = "#FF75B5", bold = true, italic = true },
            String = { fg = "#00FF87" },
            Statement = { fg = "#FFB86C", bold = true },
          }
        end,
        theme = "dragon",
        background = {
          dark = "dragon",
          light = "lotus"
        },
      })
      vim.cmd("colorscheme kanagawa-dragon")
    end
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    enabled = true,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "hard", -- can be "hard", "soft" or empty string
        palette_overrides = {

        },
        overrides = {
          SnippetTabstop = {fg = "#FF0000", bg = "#000000"}
        },
        dim_inactive = false,
        transparent_mode = false,
      })

      vim.o.termguicolors = true
      vim.opt.background = 'dark'
      vim.cmd("colorscheme gruvbox")
    end,
  },
  {
    "lifepillar/vim-solarized8",
    branch = "neovim",
    priority = 1000,
    enabled = false,
    config = function()
      vim.o.termguicolors = true
      vim.opt.background = 'light'
      vim.g.solarized_visibility = 'low'

      vim.cmd("colorscheme solarized8")
    end,
  },
}
