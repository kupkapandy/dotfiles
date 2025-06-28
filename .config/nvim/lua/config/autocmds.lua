vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if vim.tbl_contains({ 'null-ls' }, client.name) then
      return
    end
    require("lsp_signature").on_attach({
      bind = true,
      hint_prefix = "",
      floating_window = false,
    }, bufnr)
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "asm",
  callback = function()
    vim.opt_local.indentexpr = ""
  end,
})

vim.cmd [[
  highlight! link StatusLine Normal
  highlight! link StatusLineNC Normal
]]
