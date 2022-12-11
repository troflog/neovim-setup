--INSTALL PACKAGES WITH PACKE

--Note: Every time a change to plugin allready installed, due PackerSync
--      in order update the change

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()


return require('packer').startup(
{function(use)

    -- packer can manage itself
    use 'wbthomason/packer.nvim'

    --LSP server
    use {
        'neovim/nvim-lspconfig',
        config = function() require('plugins.lspconfig') end
    }

    use({
        "hrsh7th/nvim-cmp",
        -- Sources for nvim-cmp
        requires = {
          "hrsh7th/cmp-nvim-lsp",
          "hrsh7th/cmp-buffer",
          "hrsh7th/cmp-path",
          "hrsh7th/cmp-nvim-lua",
          "hrsh7th/cmp-cmdline",
          "saadparwaiz1/cmp_luasnip",
       },
        config = function() require('plugins.cmp') end,
      })

    -- Commenter
    use {
       'terrortylor/nvim-comment',
       config = function() require('nvim_comment').setup() end
    }

    -- Luasnip
    use {
        "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*",
        config = function() require('plugins.snippets') end
    }
    -- git commands
    use 'tpope/vim-fugitive'

    -- Tag viewer
    use 'preservim/tagbar'

    -- Color schema
    use 'folke/tokyonight.nvim'

    --Telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/plenary.nvim'}},
      config = function() require('plugins.telescope') end
    }

    use {
      "AckslD/nvim-neoclip.lua",
      requires = {
        -- you'requires = {
        {'kkharji/sqlite.lua', module = 'sqlite'}
       -- {'nvim-telescope/telescope.nvim'},
        -- {'ibhagwan/fzf-lua'},
      },
      config = function()
        require('plugins.neoclip')
      end
    }
    -- Neoclip
    -- use {
    --   "AckslD/nvim-neoclip.lua",
    --   requires = {
    --     {'kkharji/sqlite.lua', module = 'sqlite'},
    --     -- you'll need at least one of these
    --     -- {'nvim-telescope/telescope.nvim'},
    --     -- {'ibhagwan/fzf-lua'},
    --   },
    --   config = function()
    --     require('plugins.neoclip')
    --   end,
    -- }

    --Filesystem naviation
    use {
          'kyazdani42/nvim-tree.lua',
          requires = { 'kyazdani42/nvim-web-devicons'},
          config = function() require('plugins.nvimtree') end
    }

    --Open browser
    use 'tyru/open-browser.vim'

    --Toggle terminal
    use {
          "akinsho/toggleterm.nvim",tag = '*',
          config = function() require('plugins.toggleterm') end
    }


    -- Automatically set up your configuration after cloning packer.nvim
    if packer_bootstrap then
      require('packer').sync()

    end
 end,
 config = {
              display = {open_fn = require('packer.util').float}
 	      }
}
)



