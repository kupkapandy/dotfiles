-- Change some colors in telescope to make it look better :-)
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = NONE, fg = "#504945"})
vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = NONE, fg = "#504945"})
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = NONE, fg = "#504945"})
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = NONE, fg = "#b8bb26"})
vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { bg = NONE, fg = "#b8bb26"})
vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = NONE, fg = "#b8bb26"})

-- Change the background color of diagnostic sign column symbols and bg
vim.api.nvim_set_hl(0, "DiagnosticSignError", {bg = NONE, fg = "#fb4934"})
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", {bg = NONE, fg = "#fabd2f"})
vim.api.nvim_set_hl(0, "DiagnosticSignInfo", {bg = NONE, fg = "#83a598"})
vim.api.nvim_set_hl(0, "DiagnosticSignHint", {bg = NONE, fg = "#8ec07c"})
vim.api.nvim_set_hl(0, 'SignColumn', {fg = NONE, bg = NONE})
