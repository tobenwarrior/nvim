-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable LSP diagnostics for LeetCode files
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*/leetcode/*",
  callback = function()
    vim.diagnostic.disable(0)
  end,
  desc = "Disable diagnostics in LeetCode files",
})
