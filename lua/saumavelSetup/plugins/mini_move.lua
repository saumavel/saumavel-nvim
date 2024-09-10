-- 
return {
    "echasnovski/mini.move",
    config = function()
        require('mini.move').setup({
            -- Module mappings. Use `''` (empty string) to disable one.
            mappings = {
                -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
                left = '<M-j>',
                right = '<M-æ>',
                down = '<M-k>',
                up = '<M-l>',

                -- Move current line in Normal mode
                line_left = '<M-j>',
                line_right = '<M-æ>',
                line_down = '<M-k>',
                line_up = '<M-l>',
            },

            -- Options which control moving behavior
            options = {
                -- Automatically reindent selection during linewise vertical move
                reindent_linewise = true,
            }
        }
        )
    end
}
