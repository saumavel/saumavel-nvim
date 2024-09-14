vim.g.mapleader = " "

vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = 'Close nvim' })
vim.keymap.set("n", "<leader>x", "<cmd>x<cr>", { desc = 'Save and close nvim' })
vim.keymap.set("n", "<leader>w", "<cmd>up<cr>", { desc = 'Update file' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use j to move left!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use k to move down!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use l to move up!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use æ to move right!!"<CR>')

-- prufa að setja stóra H til að join-line  

-- Nota alt til að færa á milli ramma fyrir terminal og insert
vim.keymap.set({ "t", "i" }, "<A-h>", "<C-\\><C-N><C-w>h")
vim.keymap.set({ "t", "i" }, "<A-j>", "<C-\\><C-N><C-w>j")
vim.keymap.set({ "t", "i" }, "<A-k>", "<C-\\><C-N><C-w>k")
vim.keymap.set({ "t", "i" }, "<A-l>", "<C-\\><C-N><C-w>l")

-- sama nema fyrir normal og visual
vim.keymap.set({ "n", "v" }, "<A-j>", "<C-w>h")
vim.keymap.set({ "n", "v" }, "<A-k>", "<C-w>j")
vim.keymap.set({ "n", "v" }, "<A-l>", "<C-w>k")
vim.keymap.set({ "n", "v" }, "<A-æ>", "<C-w>l")

-- better end and start of the line
vim.keymap.set({ 'n', 'v' }, 'H', '^', { desc = 'Start of the line' })
vim.keymap.set({ 'n', 'v' }, 'L', '$', { desc = 'End of the line' })

-- better end and start of the line
vim.keymap.set({'n','v'}, "´", '$', { desc = 'Go to the beginning of the line' })

-- ef Oil er ekki tilstaðar
vim.keymap.set("n", "<leader>e", "<cmd>Ex<cr>", { desc = 'Open netrw Explore' })

-- Hraðari færsla
vim.keymap.set('n', 'J', '10j', { desc = '10 lines down' })
vim.keymap.set('n', 'K', '10k', { desc = '10 lines up' })

-- Auðveldari leitar takkar
vim.keymap.set("n", "ð", "/", { desc = 'search forward' })
vim.keymap.set("n", "Ð", "?", { desc = 'search backward' })

-- Auðveldari string leit
vim.keymap.set("n", "þ", "*", { desc = 'search word forward' })
vim.keymap.set("n", "Þ", "#", { desc = 'search word backward' })

-- Skipta endurtekt á f og t leit
vim.keymap.set("n", ",", ";", {desc = 'next f & t search'})
vim.keymap.set("n", ";", ",", {desc = 'previous f & t search'})

-- next greatest remap ever asbjornHaland tekið frá primeagen
-- setur system clipboard á space+ y, Y og p,P
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = 'System clipboard yank' })
vim.keymap.set({ "n", "v" }, "<leader>Y", [["+Y]], { desc = 'System clipboard Yank' })
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]], { desc = 'System clipboard paste' })
vim.keymap.set({ "n", "v" }, "<leader>P", [["+P]], { desc = 'System clipboard Paste' })

-- passar að yankaðir hlutir eyðist ekki eftir paste
vim.keymap.set("x", "p", "\"_dP")

-- Til að ctrl-V Insert virki með ctrl-c
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Terminal remap til að sleppa úr terminalmode með ESC
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
