return {
   -- Git related plugins    
   {'tpope/vim-fugitive'},
   {'tpope/vim-rhubarb'},

   -- Detect tabstop and shiftwidth automatically
   {'tpope/vim-sleuth'},

   --Make it more easy to find commands
   {'folke/which-key.nvim',
      opts = {}
   },

   -- Set lualine as statusline
   {
     'nvim-lualine/lualine.nvim',
     -- See `:help lualine.txt`
     opts = {
        options = {
          icons_enabled = false,
          theme = 'onedark',
          component_separators = '|',
          section_separators = '',
        },
        sections = {
          lualine_c = {
            {
              'filename',
              file_status = true,      -- Displays file status (readonly status, modified status)
              newfile_status = false,  -- Display new file status (new file means no write after created)
              path = 2                 -- 1: Just the filename
                                       -- 1: Relative path
                                       -- 2: Absolute path
                                       -- 3: Absolute path, with tilde as the home directory
                                       -- 4: Filename and parent dir, with tilde as the home directory
            },
          },
        },
     },
   },

   -- Add indentation guides even on blank lines
   {
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help indent_blankline.txt`
    main = "ibl",
    opts = {},
  },

  -- "gc" to comment visual regions/lines
  {
      'numToStr/Comment.nvim',
      opts = {
          -- add any options here
      },
      lazy = false,
  },
}
