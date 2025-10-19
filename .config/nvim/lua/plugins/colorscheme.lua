return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
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
}
