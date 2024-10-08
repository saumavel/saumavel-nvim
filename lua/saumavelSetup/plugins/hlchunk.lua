-- Description: Highlight chunk of code in Neovim
return {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("hlchunk").setup({
            chunk = {
                enable = true,
                notify = false,
                use_treesitter = true,
                error_sign = true,
                exclude_filetypes = {
                    undotree = true,
                    diff = true,
                    oil = true,
                },
                style = {
                    { fg = "#6600ff" },
                    { fg = "#df206c" }, --Highlight wrong chunk
                },
                chars = {
                    horizontal_line = "─",
                    vertical_line = "│",
                    left_top = "╭",
                    left_bottom = "╰",
                    right_arrow = ">",
                },
                delay = 1, -- if 0 then no animation
                duration = 200,
            },
            line_num = { -- virkar ekki eftir update athuga seinna
                style = "#6600ff", --"#806d9c",
                use_treesitter = true,
                exclude_filetypes = {
                    undotree = true,
                    diff = true,
                    oil = true,
                },
            },
            indent = {
                enable = false,
                -- chars = {
                --     "│",
                --     "¦",
                --     "┆",
                --     "┊",
                -- },
                -- style = {
                --     vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui"),
                -- },
                -- exclude_filetypes = {
                --     undotree = true,
                --     oil = true,
                -- },
            },
            blank = {
                enable = false,
            },
        })
    end
}
