-- Avoid to repeat this in every mapping
local options = {noremap = true}

vim.g.mapleader = " " -- Map leader to space
vim.keymap.set("i","jk","<Esc>",options) --Map jk to Esc
