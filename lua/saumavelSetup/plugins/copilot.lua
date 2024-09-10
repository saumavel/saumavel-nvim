-- Description: Configuration for GitHub Copilot Plugin
-- Description: This plugin is a code completion plugin that uses AI to suggest code completions.
return {
    -- GitHub Copilot Plugin
    {
        "github/copilot.vim",
        event = "InsertEnter",
        config = function()
            -- Custom keybindings
            vim.g.copilot_no_tab_map = true -- Disable default <Tab> mapping
            vim.api.nvim_set_keymap("i", "<C-æ>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
            vim.api.nvim_set_keymap("i", "<C-k>", 'copilot#Previous()', { silent = true, expr = true })
            vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Next()', { silent = true, expr = true })
            vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Dismiss()', { silent = true, expr = true })
        end,
    },

    -- Optional: Integration with nvim-cmp
    {
        "zbirenbaum/copilot-cmp",
        after = { "copilot.vim" },
        config = function()
            require("copilot_cmp").setup()
        end
    }, 
}
