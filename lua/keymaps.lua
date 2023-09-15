-- Keymaps for better default experience
local options = {noremap = true}
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

--Map jk/JK to Esc
vim.keymap.set("i","jk","<Esc>",options)
vim.keymap.set("i","JK","<Esc>",options)
