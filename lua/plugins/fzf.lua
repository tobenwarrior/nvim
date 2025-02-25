-- C:/Users/growt/AppData/Local/nvim/lua/plugins/fzf.lua
return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        -- Optional: Basic setup
        require("fzf-lua").setup({})
    end,
}