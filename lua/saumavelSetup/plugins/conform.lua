-- Description: Conform is a formatter for Neovim that can be used to format files on save or on demand. It supports a wide range of formatters and can be configured to work with any language.
-- Spyrja Matta
-- herma eftir nýja matta.
-- nýja ctrl j

return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
        {
            -- Customize or remove this keymap to your liking
            "<leader>i",
            function()
                require("conform").format({ async = true, lsp_fallback = true })
            end,
            mode = "",
            desc = "Format buffer with conform",
        },
    },

    -- Everything in opts will be passed to setup()
    opts = {
        -- Define your formatters () halló ()
        formatters_by_ft = {
            fortran = { "findent" },
            -- lua = { "stylua" },
            -- python = { "isort", "black" },
            -- javascript = { { "prettierd", "prettier" } },
        },
        -- Set up format-on-save
        -- format_on_save = { timeout_ms = 500, lsp_fallback = true },
        -- Customize formatters
        formatters = {
            -- shfmt = {
            --     prepend_args = { "-i", "2" },
            -- },
            findent = {
                prepend_args = { "-i4" }
            },
        },
    }
}
