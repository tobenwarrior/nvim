-- Set PowerShell (pwsh.exe) as the default terminal
vim.opt.shell = '"C:\\Program Files\\WindowsApps\\Microsoft.PowerShell_7.4.5.0_x64__8wekyb3d8bbwe\\pwsh.exe"'
vim.opt.shellcmdflag = "-c"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""


-- Check if lazy.nvim is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import/override with your plugins
    { import = "plugins" },

    -- Add Catppuccin theme
    {
      "catppuccin/nvim",
      name = "catppuccin", -- Specify the plugin name for lazy loading
      lazy = false, -- Load the theme on startup
      priority = 1000, -- Ensure the theme loads before other plugins
      config = function()
        require("catppuccin").setup({
          flavour = "mocha", -- Choose your flavor: latte, frappe, macchiato, mocha
          transparent_background = false, -- Disable transparent background
          term_colors = true, -- Use terminal colors
          styles = {
            comments = { "italic" },
            functions = { "bold" },
            keywords = { "italic" },
            strings = {},
            variables = {},
          },
        })
        vim.cmd("colorscheme catppuccin") -- Set the theme
      end,
    },

    -- Add LSP configurations
    {
      "neovim/nvim-lspconfig",
      config = function()
        local lspconfig = require("lspconfig")
        -- Configure C# Language Server
        lspconfig.csharp_ls.setup({})

        -- Configure Lua Language Server
        lspconfig.lua_ls.setup({})
      end,
    },

    -- Optionally, add a plugin for formatting
    {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
          sources = {
            null_ls.builtins.formatting.csharpier,
            null_ls.builtins.formatting.stylua,
            -- Add more formatters or linters as needed
          },
        })
      end,
    },

    -- Add Treesitter configuration
    {
      "nvim-treesitter/nvim-treesitter",
      event = { "BufReadPre", "BufNewFile" },
      build = ":TSUpdate",
      config = function()
        -- Set clang as the compiler for Treesitter
        require("nvim-treesitter.install").compilers = { "clang" }
    
        -- Import nvim-treesitter plugin
        local treesitter = require("nvim-treesitter.configs")
    
        -- Configure treesitter
        treesitter.setup({
          -- Enable syntax highlighting
          highlight = {
            enable = true,
          },
          -- Enable indentation
          indent = { enable = true },
          -- Ensure these language parsers are installed
          ensure_installed = {
            "markdown",
            "markdown_inline",
            -- Add other languages as needed
          },
        })
      end,
    },
  },
  defaults = {
    lazy = false,
    version = false,
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = {
    enabled = true,
    notify = false,
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
