-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- Disable completion and Mini.pairs for Markdown files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "gitcommit", "markdown" },
  callback = function(event)
    require("cmp").setup({ enabled = false })
    vim.keymap.set("i", "`", "`", { buffer = event.buf })
  end,
})
