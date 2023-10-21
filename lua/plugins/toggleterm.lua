return {
  'akinsho/toggleterm.nvim',
    version = "*",
    lazy = false,
    config = function()
              require("toggleterm").setup({
                    -- size can be a number or function which is passed the current terminal
                  size = function(term)
                    if term.direction == "horizontal" then
                      return 15
                    elseif term.direction == "vertical" then
                      return vim.o.columns * 0.4
                    end
                  end,
                  open_mapping = "<C-n>"
                  --';
                })
     end,
     keys ={
          {                "<leader>tl", "<cmd>ToggleTermSendCurrentLine<cr>",        desc = "[T]Term Send current line"  },
          { mode={"n","v"},"<leader>tk", "<cmd>ToggleTermSendVisualSelection<cr>",    desc = "[T]Term Send visual selction "  },
          { mode={"n","v"},"<leader>tj", "<cmd>ToggleTermSendVisualLines<cr>",        desc = "[T]Term Send lines in selction"  },
     },
     init = function()
        function _G.set_terminal_keymaps()
          --#vim.keymap.set("n",'<leader>t', '<Cmd>execute v:count . "ToggleTerm"<CR>', {desc = "Toggle Terminal",silent = true})
          --#vim.keymap.set("t",'<leader>t', "<Esc><Cmd>ToggleTerm<CR>", {desc = "Toggle Terminal",silent = true,})
          local opts = {buffer = 0}  --buffer =0 means current buffer
          vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
          --vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
          vim.keymap.set('t', '<C-h>', "<cmd>NavigatorLeft<cr>" , opts)
          vim.keymap.set('t', '<C-j>', "<cmd>NavigatorDown<cr>" , opts)
          vim.keymap.set('t', '<C-k>', "<cmd>NavigatorUp<cr>"   , opts)
          vim.keymap.set('t', '<C-l>', "<cmd>NavigatorRight<cr>", opts)
          -- vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
          -- vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
          -- vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
          -- vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
        end

        -- if you only want these mappings for toggle term use term://*toggleterm#* instead
        -- This set the keymaps for the current terminal only
        vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
       end,
}
