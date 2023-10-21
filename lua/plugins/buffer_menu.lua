
  return {
      'j-morano/buffer_manager.nvim',
      dependencies = {
          'nvim-lua/plenary.nvim'
      },
      lazy= false,
      -- keys = {
      --      --Telescope
      --       -- { "<leader>b","<cmd> lua require('buffer_manager.ui').toggle_quick_menu()<CR>"   },
      -- },
      config = function()
            local map = vim.keymap.set
            -- Setup
            require("buffer_manager").setup({
              select_menu_item_commands = {
                v = {
                  key = "<C-v>",
                  command = "vsplit"
                },
                h = {
                  key = "<C-h>",
                  command = "split"
                }
              },
              focus_alternate_buffer = true,
              short_file_names = false,
              short_term_names = false,
              loop_nav = false,
            })
            -- -- Navigate buffers bypassing the menu
            local bmui = require("buffer_manager.ui")
            -- local keys = '1234567890'
            -- for i = 1, #keys do
            --   local key = keys:sub(i,i)
            --   map(
            --     'n',
            --     string.format('<leader>%s', key),
            --     function () bmui.nav_file(i) end,
            --     opts
            --   )
            -- end
            -- Just the menu
            map({ 't', 'n' }, '<Space>j', bmui.toggle_quick_menu,{noremap = true, desc='Show buffer list'})
            -- Open menu and search
            -- map({ 't', 'n' }, '<M-m>', function ()
            --   bmui.toggle_quick_menu()
            --   -- wait for the menu to open
            --   vim.defer_fn(function ()
            --     vim.fn.feedkeys('/')
            --   end, 50)
            -- end, opts)
            -- -- Next/Prev
            -- map('n', '<M-j>', bmui.nav_next, opts)
            -- map('n', '<M-k>', bmui.nav_prev, opts)

      end

  }
