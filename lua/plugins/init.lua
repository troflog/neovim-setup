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
