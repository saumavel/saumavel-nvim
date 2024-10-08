-- A blazing fast and easy to configure Neovim statusline written in Lua. 
-- Neðst í terminalinu er lualine sem er statusline fyrir neovim
return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup {
            options = {
                icons_enabled = true,
                theme = 'catppuccin',
                component_separators = '',
                -- section_separators = { left = '', right = '' },
                -- component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = { 'undotree', 'diff' },
                always_divide_middle = true,
                globalstatus = false,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'filename', 'diff', 'diagnostics' },
                lualine_c = {
                    { 'branch' },
                },
                lualine_x = {
                    { 'filetype' },
                    { 'grapple' },
                },
                lualine_y = {
                    { -- setur @macro í lualine
                        require("noice").api.status.mode.get,
                        cond = require("noice").api.status.mode.has,
                        color = { fg = "#ff9e64" },
                    },
                    { -- Setur leitarniðurstöður í lualine
                        require("noice").api.status.search.get,
                        cond = require("noice").api.status.search.has,
                        color = { fg = "#ff9e64" },
                    },
                },
                lualine_z = { 'location', 'progress' },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { 'filename' },
                lualine_x = { 'location' },
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = { 'oil' },
        }
    end
}
