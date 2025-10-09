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

-- Windows Terminal configuration
if vim.fn.has("win32") == 1 then
  -- Set shell to PowerShell for better Windows Terminal integration
  vim.opt.shell = "pwsh"
  vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
end

-- Enable syntax highlighting (fallback for when treesitter fails)
vim.cmd([[syntax enable]])

-- Enhanced C++ syntax highlighting
vim.g.cpp_class_scope_highlight = 1
vim.g.cpp_member_variable_highlight = 1
vim.g.cpp_class_decl_highlight = 1
vim.g.cpp_posix_standard = 1
vim.g.cpp_experimental_template_highlight = 1
vim.g.cpp_concepts_highlight = 1
