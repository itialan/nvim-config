local status, indentline = pcall(require, "indent_blankline")
if (not status) then return end

vim.opt.list = true
vim.opt.listchars:append "space: "
-- vim.opt.listchars:append "eol:↴"

indentline.setup({
  char = "▏",
  show_end_of_line = false,
  disable_with_nolist = true,
  buftype_exclude = { "terminal" },
  space_char_blankline = " ",
  -- show_current_context = true,
  -- show_current_context_start = true,
})

-- local gid = vim.api.nvim_create_augroup("indent_blankline", { clear = true })
-- vim.api.nvim_create_autocmd("InsertEnter", {
--   pattern = "*",
--   group = gid,
--   command = "IndentBlanklineDisable"
-- })

-- vim.api.nvim_create_autocmd("InsertLeave", {
--   pattern = "*",
--   group = gid,
--   callback = function()
--     vim.cmd [[IndentBlanklineEnable]]
--   end
-- })
