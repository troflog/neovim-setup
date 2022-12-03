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


    -- Commenter
    use {
       'terrortylor/nvim-comment',
       config = function() require('nvim_comment').setup() end 
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

    -- Neoclip
    use {
      "AckslD/nvim-neoclip.lua",
      requires = {
        {'kkharji/sqlite.lua', module = 'sqlite'},
        -- you'll need at least one of these
        -- {'nvim-telescope/telescope.nvim'},
        -- {'ibhagwan/fzf-lua'},
      },
      config = function()
        require('plugins.neoclip')
      end,
    }
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
    
    --Telescope bookmark plugin
    use {
        'dhruvmanila/telescope-bookmarks.nvim',
        tag = '*',
        config = function() require('plugins.bookmarks') end
        -- Uncomment if the selected browser is Firefox, Waterfox or buku
        -- requires = {
        --   'kkharji/sqlite.lua',
        -- }
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



