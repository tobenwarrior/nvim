return {
    -- Catppuccin with Mocha flavor
    {
      "catppuccin/nvim",
      name = "catppuccin",
      lazy = false,
      priority = 1000,
      config = function()
        require("catppuccin").setup({
          flavour = "mocha",
          transparent_background = true, -- Enable transparency
          -- Optional: Other customizations
          term_colors = true,
          integrations = {
            cmp = true,
            treesitter = true,
            telescope = true,
          },
        })
        vim.cmd.colorscheme("catppuccin")
      end,
    },

    { "morhetz/gruvbox" },
    {"miikanissi/modus-themes.nvim"},
  
    -- currently added themes
    -- 1) catppuccin (very nice)
    -- 2) gruvbox (idk never use before)
    -- 3) quiet (luffy theme black n white)
    -- 4) modus
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "catppuccin",
      },
    }
  }
