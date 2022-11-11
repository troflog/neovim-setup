-- Avoid to repeat this in every mapping 
local options = {noremap = true}

-- Map leader to space
vim.g.mapleader = " "                    

-- Save with Ctrl + S
vim.keymap.set("n","<C-s>", ":w<CR>",options)

--Map jk to Esc
vim.keymap.set("i","jk","<Esc>",options) 

-- Move around windows (shifted to the right)
vim.keymap.set("n","<C-h>", "<C-w>h",options)
vim.keymap.set("n","<C-j>", "<C-w>j",options)
vim.keymap.set("n","<C-k>", "<C-w>k",options)
vim.keymap.set("n","<C-l>", "<C-w>l",options)

-- Clear highlight search
vim.keymap.set("n","<leader>x", ":nohlsearch<CR>",options)
vim.keymap.set("v","<leader>x", ":nohlsearch<CR>",options)

-- Splits
vim.keymap.set("n","<leader>ws", ":split<CR>",options)
vim.keymap.set("n","<leader>vs", ":vsplit<CR>",options)

-- Nvimtree
vim.keymap.set("n","<C-n>", ":NvimTreeToggle<CR>",options)

-- Populate substitution
--vim.keymap.set("<leader>s", ":s//g<Left><eft>")
--vim.keymap.set("<leader>S", ":%s//g<Left><Left>")
--vim.keymap.set("<leader><C-s>", ":%s//gc<Left><Left><Left>")
--
--vim.keymap.set("<leader>s", ":s//g<Left><Left>")
--vim.keymap.set("<leader><A-s>", ":%s//g<Left><Left>")
--vim.keymap.set("<leader>S", ":%s//gc<Left><Left><Left>")
vim.keymap.set("n","<leader>w", ":w<CR>",options)
