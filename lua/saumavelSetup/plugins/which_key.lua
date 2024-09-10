-- WhichKey helps you remember your Neovim keymaps, by showing available keybindings in a popup as you type.
return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        preset = "modern"
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        -- win = {
        --     border = "rounded"
        -- },
        -- layout = {
        --     align = "center",
        -- }
    }
}
