--INSTALL PACKAGES WITH PACKER

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

    -- Tag viewer
    use 'preservim/tagbar'

    -- Color schema
    use 'folke/tokyonight.nvim'
    --LSP 

    --filesystem naviation
    use {                                              
          'kyazdani42/nvim-tree.lua',
          requires = { 'kyazdani42/nvim-web-devicons'}, 
          config = function() require('plugins.nvimtree') end
        }

    --Toggle terminal
    use {
          "akinsho/toggleterm.nvim",tag = '*',
          config = function() require('plugins.toggleterm') end
        }

    -- automatically set up your configuration after cloning packer.nvim
    if packer_bootstrap then
      require('packer').sync()
      
    end
 end,
 config = {
              display = {open_fn = require('packer.util').float}
 	      }
}
)



