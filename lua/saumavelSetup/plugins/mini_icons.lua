-- Description: A minimalistic icons plugin for neovim
return {
    'echasnovski/mini.icons',
    version = false,
    config = function()
        require('mini.icons').setup()
    end
}
