-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local opt = vim.opt

-- Set tabstop to 4 spaces (how wide a tab character is displayed)
opt.tabstop = 4

-- Set shiftwidth to 4 spaces (width for each level of indentation)
opt.shiftwidth = 4

-- Use spaces instead of tabs
opt.expandtab = true

-- Smart tabs (use shiftwidth at the start of a line, tabstop otherwise)
opt.smarttab = true

-- Auto indent (enable auto-indentation)
opt.autoindent = true

-- Smart indent (better auto-indentation for languages)
opt.smartindent = true