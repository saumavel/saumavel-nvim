-- Description: Grapple is a plugin that aims to provide immediate navigation to important files..
return {
    "cbochs/grapple.nvim",
    opts = {
        scope = "git", -- also try out "git_branch"
    },
    event = { "BufReadPost", "BufNewFile" },
    cmd = "Grapple",
    keys = {
        { "<leader>m", "<cmd>Grapple toggle<cr>",         desc = "Grapple toggle tag" },
        { "<leader>h", "<cmd>Grapple select index=1<cr>", desc = "Select first tag" },
        { "<leader>j", "<cmd>Grapple select index=2<cr>", desc = "Select second tag" },
        { "<leader>k", "<cmd>Grapple select index=3<cr>", desc = "Select third tag" },
        { "<leader>l", "<cmd>Grapple select index=4<cr>", desc = "Select fourth tag" },
        { "<leader>M", "<cmd>Grapple toggle_tags<cr>",    desc = "Grapple open tags window" },
    },
    config = function ()
        require('grapple').setup({
            win_opts = {
                border = 'rounded',
                width = 70,
            }
        })
    end
}
