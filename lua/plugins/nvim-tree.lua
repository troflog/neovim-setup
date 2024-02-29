return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
      vim.api.nvim_create_autocmd("BufEnter", {
       nested = true,
       callback = function()
         if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
           vim.cmd "quit"
         end
       end
      })

  -- vim.keymap.set('n', '<C-]>',   api.tree.change_root_to_node,        opts('CD'))
    -- vim.keymap.set("n","å","<C-]>",{noremap = true,desc = "Change root to node"})
  end,
  keys ={
    { mode={"n","v"},"<C-b>", "<cmd>NvimTreeToggle<cr>",    desc = "ToggleTerm"  },
  },
}
