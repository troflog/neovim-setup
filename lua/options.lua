local opt = vim.opt

opt.expandtab = true                -- Use spaces instead of tabs
opt.tabstop = 4                     -- size of <tab> measured in spaces 
opt.shiftwidth = 4                  -- size of an indent, 4 spaces to match <tab>
opt.hidden = true                   -- Enable background buffers
opt.autoindent = true               -- Copy indent from curretn line when staring a new line
opt.ignorecase = true               -- Ignore case
opt.joinspaces = false              -- No double spaces with join
opt.number = true                   -- Show line number
opt.relativenumber = true           -- Relative line numbers
opt.clipboard = 'unnamedplus'       -- Using system clipboard
opt.hidden = true                   -- Removes the "No write since last change (add ! to overwrite)
opt.splitbelow = true
--opt.syntax = true                   -- Syntax highlighting
