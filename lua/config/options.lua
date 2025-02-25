-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.tabstop = 4       -- Unity uses 4 spaces per tab
vim.opt.shiftwidth = 4    -- Indent by 4 spaces when auto-indenting
vim.opt.softtabstop = 4   -- Makes backspacing feel natural
vim.opt.expandtab = false -- Use real tabs instead of spaces
vim.opt.smartindent = true -- Enable smart indentation
vim.opt.autoindent = true -- Maintain previous indentation level

-- C-style indentation similar to Unity
vim.opt.cinoptions = "(0" -- Force
