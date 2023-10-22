return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
--    enabled = true,
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- Fuzzy Finder Algorithm which requires local dependencies to be built.
      -- Only load if `make` is available. Make sure you have the system
      -- requirements installed.
      'nvim-tree/nvim-web-devicons',
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
        { "<leader>fp", "<cmd>Telescope<cr>",                                     desc = "Find Pickers"  },
        { "<leader>ff", "<cmd>Telescope find_files <cr>",                         desc = "Find Files"      },
        { "<leader>fh", "<cmd>Telescope find_files hidden=true<cr>",              desc = "Find Hidden Files"      },
        { "<leader>fb", "<cmd>Telescope buffers<cr>",                             desc = "Find Buffers"         },
        { "<leader>fr", "<cmd>Telescope oldfiles<cr>",                            desc = "Find Recent"          },
        -- git
        { "<leader>gc", "<cmd>Telescope git_commits<CR>",                         desc = "Git Commits"         },
        { "<leader>gs", "<cmd>Telescope git_status<CR>",                          desc = "Git Status"          },
        -- search
        { "<leader>sg","<cmd>Telescope live_grep<cr>",                            desc = "Search Grep"            },
        { '<leader>sr', "<cmd>Telescope registers<cr>"                          , desc = "Search Registers"       },
        { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>"          , desc = "Search Buffer"         },
        { "<leader>sc", "<cmd>Telescope command_history<cr>"                    , desc = "Search Command History" },
        { "<leader>sC", "<cmd>Telescope commands<cr>"                           , desc = "Search Commands" }       ,
        { "<leader>sh", "<cmd>Telescope help_tags<cr>"                          , desc = "Search Help Pages" }     ,
        { "<leader>sk", "<cmd>Telescope keymaps<cr>"                            , desc = "Search Key Maps" }       ,
        { "<leader>sM", "<cmd>Telescope man_pages<cr>"                          , desc = "Search Man Pages" }      ,
        { "<leader>so", "<cmd>Telescope vim_options<cr>"                        , desc = "Search Options" }        ,
      },
    config = function()
        local actions = require("telescope.actions")
        require('telescope').setup {
          defaults = {
            file_ignore_patterns = {
                 "node_modules",".npm", "build",".git", "dist", "yarn.lock"
            },
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
