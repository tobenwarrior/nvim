-- C:/Users/growt/AppData/Local/nvim/lua/plugins/telescope.lua
return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x", -- Use a stable branch
    dependencies = {
        "nvim-lua/plenary.nvim", -- Already in your obsidian config
    },
    config = function()
        -- Optional: Basic Telescope setup
        require("telescope").setup {}
    end,
}