-- Avoid to repeat this in every mapping
local options = {noremap = true}

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Map leader to space
vim.g.mapleader = " "                    

-- Save with Ctrl + S
vim.keymap.set("n","<C-s>", ":w<CR>",options)

-- Quit and save buffer with Shift + q
vim.keymap.set("n","<S-q>", ":w|b#|bd#<CR>",options)

--Map jk/JK to Esc
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

-- Clear highlight search
vim.keymap.set("n","<leader>x", ":nohlsearch<CR>",options)
vim.keymap.set("v","<leader>x", ":nohlsearch<CR>",options)

-- Splits
vim.keymap.set("n","<leader>ws", ":split<CR>",options)
vim.keymap.set("n","<leader>vs", ":vsplit<CR>",options)


-- Populate substitution
--vim.keymap.set("<leader>s", ":s//g<Left><eft>")
--vim.keymap.set("<leader>S", ":%s//g<Left><Left>")
--vim.keymap.set("<leader><C-s>", ":%s//gc<Left><Left><Left>")
--
--vim.keymap.set("<leader>s", ":s//g<Left><Left>")
--vim.keymap.set("<leader><A-s>", ":%s//g<Left><Left>")
--vim.keymap.set:("<leader>S", ":%s//gc<Left><Left><Left>")
