print('hello from toggletrem')
require("toggleterm").setup({
      -- size can be a number or function which is passed the current terminal
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = "<C-p>"
    }
)

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}  --buffer =0 means current buffer
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  --vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
-- This set the keymaps for the current terminal only
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

--Keymaps for Toggleterm
--
-- ToggleTermSendCurrentLine <T_ID>: sends the whole line where you are standing with your cursor
-- ToggleTermSendVisualSelection <T_ID>: sends only the visually selected text
--                                      (this can be a block of text or
--                                       a selection in a single line)
-- ToggleTermSendVisualLines <T_ID>: sends all the (whole) lines in your visual selection

local options = {noremap = true}
vim.keymap.set('n', '<leader>tl',':ToggleTermSendCurrentLine <CR>',options)
vim.keymap.set('v', '<leader>tv',':ToggleTermSendVisualSelection<CR>',options)
vim.keymap.set('v', '<leader>tV',':ToggleTermSendVisualLines<CR>',options)
