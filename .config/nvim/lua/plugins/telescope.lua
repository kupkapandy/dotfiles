return {
  {
    'nvim-telescope/telescope.nvim',

    keys = {
      {
        ';f',
        function()
          local builtin = require("telescope.builtin")
          builtin.find_files({
            hidden = true,
            disable_devicons = true,
          })
        end,
      },
      {
        ';r',
        function()
          local builtin = require("telescope.builtin")
          builtin.live_grep()
        end,
      },
    },

    config = function(_, opts)
      require("telescope").setup({
        defaults = {
          layout_config = {
            prompt_position = "top",
            preview_width = 0.6,
          },
          sorting_strategy = "ascending",
          file_ignore_patterns = {
            "%.git/",
            "%.cache/",
            "lib/",
            "%.o",
            "%.fls",
            "%.aux",
            "%.toc",
            "%.fdb_latexmk",
            "%.synctex.gz",
          },
        }
      })
    end,
  }
}
