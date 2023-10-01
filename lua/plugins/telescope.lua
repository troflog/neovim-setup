return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
--    enabled = true,
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- Fuzzy Finder Algorithm which requires local dependencies to be built.
      -- Only load if `make` is available. Make sure you have the system
      -- requirements installed.
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        -- NOTE: If you are having trouble with this installation,
        --       refer to the README for telescope-fzf-native for more instructions.
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
    },
   keys = {
        --Telescope
        { "<leader>fa", "<cmd>Telescope<cr>",                                     desc = "Open Telescope"  },
        -- find
        { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", desc = "Find Files"      },
        { "<leader>fb", "<cmd>Telescope buffers<cr>",                             desc = "Buffers"         },
        { "<leader>fr", "<cmd>Telescope oldfiles<cr>",                            desc = "Recent"          },
        -- git
        { "<leader>gc", "<cmd>Telescope git_commits<CR>",                         desc = "Commits"         },
        { "<leader>gs", "<cmd>Telescope git_status<CR>",                          desc = "Status"          },
        -- search
        { "<leader>sg","<cmd>Telescope live_grep<cr>",                            desc = "Grep"            },
        { '<leader>sr', "<cmd>Telescope registers<cr>"                          , desc = "Registers"       },
        { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>"          , desc = "Buffer"         },
        { "<leader>sc", "<cmd>Telescope command_history<cr>"                    , desc = "Command History" },
        { "<leader>sC", "<cmd>Telescope commands<cr>"                           , desc = "Commands" }       ,
        { "<leader>sh", "<cmd>Telescope help_tags<cr>"                          , desc = "Help Pages" }     ,
        { "<leader>sk", "<cmd>Telescope keymaps<cr>"                            , desc = "Key Maps" }       ,
        { "<leader>sM", "<cmd>Telescope man_pages<cr>"                          , desc = "Man Pages" }      ,
        { "<leader>so", "<cmd>Telescope vim_options<cr>"                        , desc = "Options" }        ,
      },
    config = function()
        local actions = require("telescope.actions")
        require('telescope').setup {
          defaults = {
            mappings = {
              i = {
                ['<C-u>'] = false,
                ['<C-d>'] = false,
                ["<esc>"] = actions.close,
                },
            },
          },
        }
        -- Enable telescope fzf native, if installed
        pcall(require('telescope').load_extension, 'fzf')
    end,
}
