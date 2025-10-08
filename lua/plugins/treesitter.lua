-- C:/Users/growt/AppData/Local/nvim/lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "c",
      "cpp", -- C++ syntax highlighting
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
    highlight = {
      enable = true, -- Enable syntax highlighting
    },
    indent = {
      enable = true, -- Enable treesitter-based indentation
    },
  },
}
