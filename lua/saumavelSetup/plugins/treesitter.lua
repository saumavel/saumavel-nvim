return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "fortran", "python", "bash", "fish", "java", "markdown", "markdown_inline", "make", "nix", "regex", "rust", "cpp", "latex","sql" },
            sync_install = false,
            auto_install = true, -- Automatically install missing parsers when entering buffer
            highlight = { enable = true },
            indent = {
                enable = true,
                disable = { "fortran" }
            },

        })
    end
}
