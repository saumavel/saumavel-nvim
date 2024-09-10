return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        opts = {
            flavour = "mocha", -- You can choose between "latte", "frappe", "macchiato", "mocha"
        },
        config = function()
            require("catppuccin").setup({
                -- custom highlights or overrides can be placed here
                transparent_background = false, -- Enable/Disable transparency
                term_colors = true, -- Set terminal colors as well
                styles = {
                    comments = { "italic" },
                    conditionals = { "italic" },
                    loops = {},
                    functions = {},
                    keywords = {},
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = {},
                    operators = {},
                },
                integrations = {
                    telescope = true, -- Enable Catppuccin integration for telescope
                    nvimtree = true, -- Enable Catppuccin integration for NvimTree
                    treesitter = true, -- Enable Catppuccin integration for Treesitter
                    cmp = true, -- Enable Catppuccin integration for nvim-cmp
                    gitsigns = true, -- Enable Catppuccin integration for Gitsigns
                },
            })
            -- Apply the colorscheme
            vim.cmd.colorscheme("catppuccin")
        end
    },
    {
        "Shatur/neovim-ayu",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
        end,
    },
}
