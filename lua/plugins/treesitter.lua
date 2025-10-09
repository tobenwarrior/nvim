-- C:/Users/growt/AppData/Local/nvim/lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "bash",
      "c",
      -- "cpp", -- Disabled due to Windows parser loading issues
      "html", -- Required for LeetCode descriptions
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "vim",
      "yaml",
    },
    ignore_install = { "cpp" }, -- Explicitly ignore cpp parser
    auto_install = false, -- Disable auto-install to prevent errors
    highlight = {
      enable = true, -- Enable syntax highlighting
      disable = { "cpp", "c" }, -- Disable treesitter for cpp and c files
      additional_vim_regex_highlighting = { "cpp", "c" }, -- Use vim regex instead
    },
    indent = {
      enable = true, -- Enable treesitter-based indentation
      disable = { "cpp", "c" }, -- Disable treesitter indent for cpp/c files
    },
  },
}
