-- NVIM tree
print('Hello from nvim tree')
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- shortcut for nvim-tree 
vim.keymap.set("n","<C-b>", ":NvimTreeToggle<CR>",{noremap = true})
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
--Setup
require('nvim-tree').setup({
  -- Allow using gx
  disable_netrw = false,
  hijack_netrw = false,
  update_cwd = true,
})

vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
      vim.cmd "quit"
    end
  end
})
