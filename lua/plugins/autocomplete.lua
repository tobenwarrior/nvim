return {
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local luasnip = require("luasnip")
      local cmp = require("cmp")

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<CR>"] = cmp.mapping.confirm({ select = true }),  -- Confirm completion with Enter key
        ["<Tab>"] = cmp.mapping.confirm({ select = true }), -- Confirm completion with Tab key
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()  -- Navigate to the previous item in the autocomplete menu
          else
            fallback()  -- Fallback to default behavior if completion menu is not visible
          end
        end, { "i", "s" }),
      })
    end,
  },
}
