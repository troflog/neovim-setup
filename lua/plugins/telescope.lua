print('Hello from telescope')
local options = {} 
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, options)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, options)
vim.keymap.set('n', '<leader>fb', builtin.buffers, options)
vim.keymap.set('n', '<leader>fh', builtin.help_tags, options)
vim.keymap.set('n', '<leader>fy', builtin.registers, options)
vim.keymap.set('n', '<leader>fh', builtin.help_tags, options)
local actions = require("telescope.actions")
require("telescope").setup({
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close, --close buffer with esc
            },
        },
    },
    pickers = {
        buffers = {
          initial_mode = "normal",
        }
      }

})
