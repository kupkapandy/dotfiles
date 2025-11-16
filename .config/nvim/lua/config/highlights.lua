-- Change some colors in telescope to make it look better :-)
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = NONE, fg = "#504945"})
vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = NONE, fg = "#504945"})
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = NONE, fg = "#504945"})
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = NONE, fg = "#b8bb2d"})
vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { bg = NONE, fg = "#b8bb2d"})
vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = NONE, fg = "#b8bb2d"})
vim.api.nvim_set_hl(0, 'SignColumn', {fg = NONE, bg = NONE})

vim.api.nvim_set_hl(0, "Pmenu", { bg = "#f4E8bE", fg = "#3C3836" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#E5D5AD", fg = "#3C3836", bold = true })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "#f4E8bE" })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#f4E8bE" })

vim.api.nvim_set_hl(0, "lualine_c_command", { bg = "#fbf1c7"})
vim.api.nvim_set_hl(0, "lualine_c_inactive", { bg = "#fbf1c7"})
vim.api.nvim_set_hl(0, "lualine_c_insert", { bg = "#fbf1c7"})
vim.api.nvim_set_hl(0, "lualine_c_normal", { bg = "#fbf1c7"})
vim.api.nvim_set_hl(0, "lualine_c_replace", { bg = "#fbf1c7"})
vim.api.nvim_set_hl(0, "lualine_c_visual", { bg = "#fbf1c7"})

--[[
vim.api.nvim_set_hl(0, "DiagnosticSignError", {bg = NONE, fg = "#fb4934"})
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", {bg = NONE, fg = "#fabd2f"})
vim.api.nvim_set_hl(0, "DiagnosticSignInfo", {bg = NONE, fg = "#83a598"})
vim.api.nvim_set_hl(0, "DiagnosticSignHint", {bg = NONE, fg = "#8ec07c"})
--
--]]
