local opt = vim.opt

--Set color scheme

vim.g.tokyonight_colors = {border = "white"}
vim.g.tokyonight_style = 'storm'
vim.cmd("colorscheme tokyonight-night")

--Options
vim.o.termguicolors = true        -- True colors
vim.o.expandtab = true            -- Use spaces instead of tabs
vim.o.tabstop = 4                 -- size of <tab> measured in spaces 
vim.o.shiftwidth = 4              -- size of an indent, 4 spaces to match <tab>
vim.o.hidden = true               -- Enable background buffers
vim.o.autoindent = true           -- Copy indent from curretn line when staring a new line
vim.o.ignorecase = true           -- Ignore case
vim.o.joinspaces = false          -- No double spaces with join
vim.o.number = true               -- Show line number
vim.o.relativenumber = true       -- Relative line numbers
vim.o.clipboard = 'unnamedplus'   -- Using system clipboard
vim.o.hidden = true               -- Removes the "No write since last change (add ! to overwrite)
vim.o.splitbelow = true           -- force all horizontal splits to go below current window
vim.o.termguicolors = true        -- set term gui true colors (most terminals support this)
vim.o.hlsearch = false            -- Set highlight on search
vim.o.undofile = true             -- Save undo history
--Local to window options
vim.wo.wrap = false             -- Turn off line wrapping

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
