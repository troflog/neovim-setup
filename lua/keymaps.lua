-- Keymaps for better default experience
local options = {noremap = true}
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Map jk/JK to Esc
vim.keymap.set("i","jk","<Esc>",options)
vim.keymap.set("i","JK","<Esc>",options)

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- quit
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })
vim.keymap.set("n", "<leader>qb", "<cmd>q<cr>", { desc = "Quit buffer" })

-- Move around windows (shifted to the right)
-- vim.keymap.set("n","<C-h>", "<C-w>h",options)
-- vim.keymap.set("n","<C-j>", "<C-w>j",options)
-- vim.keymap.set("n","<C-k>", "<C-w>k",options)
-- vim.keymap.set("n","<C-l>", "<C-w>l",options)
--Globals

vim.keymap.set("n","<C-h>",  "<cmd>NavigatorLeft<cr>" )
vim.keymap.set("n","<C-j>",  "<cmd>NavigatorDown<cr>" )
vim.keymap.set("n","<C-k>",  "<cmd>NavigatorUp<cr>"   )
vim.keymap.set("n","<C-l>",  "<cmd>NavigatorRight<cr>")

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", options)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", options)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", options)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", options)

-- Make splits with leder
vim.keymap.set("n", "<leader>ww" , "<C-W>p", { desc = "Other window"      , remap = true })
vim.keymap.set("n", "<leader>wd" , "<C-W>c", { desc = "Delete window"     , remap = true })
vim.keymap.set("n", "<leader>w-" , "<C-W>s", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<leader>w\\", "<C-W>v", { desc = "Split window right", remap = true })
vim.keymap.set("n", "<leader>-"  , "<C-W>s", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<leader>\\" , "<C-W>v", { desc = "Split window right", remap = true })

--Paste remaps--
-- Paste from the * register 
vim.keymap.set("n","ø",'"*p',{desc = "Paste from the * register"})
-- Delete into black hole register then paste (keep the pasted text in " registger)
vim.keymap.set("x", "ø", [["_dP]],{desc = "Delete and paste (visual mode)"})

--Naviagate help file
vim.keymap.set("n","å","<C-]>")

-- document existing key chains
require('which-key').register({
  ['<leader>f'] = { name = 'Find', _ = 'which_key_ignore' },
  ['<leader>s'] = { name = 'Search', _ = 'which_key_ignore' },
  ['<leader>t'] = { name = 'Term', _ = 'which_key_ignore' },
  ['<leader>g'] = { name = 'Git', _ = 'which_key_ignore' },
  -- ['<leader>h'] = { name = 'More git', _ = 'which_key_ignore' },
  -- ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
  -- ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
})
