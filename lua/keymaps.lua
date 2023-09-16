-- Keymaps for better default experience
local options = {noremap = true}
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Map jk/JK to Esc
vim.keymap.set("i","jk","<Esc>",options)
vim.keymap.set("i","JK","<Esc>",options)

-- Move around windows (shifted to the right)
vim.keymap.set("n","<C-h>", "<C-w>h",options)
vim.keymap.set("n","<C-j>", "<C-w>j",options)
vim.keymap.set("n","<C-k>", "<C-w>k",options)
vim.keymap.set("n","<C-l>", "<C-w>l",options)

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", options)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", options)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", options)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", options)
