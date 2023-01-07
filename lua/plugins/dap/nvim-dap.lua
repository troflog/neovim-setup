print('Dap')

--Setup nvim-dap


--Nvim-dap key mappings
local options = {noremap = true}

vim.keymap.set("n","<F5>",       "<Cmd>lua require'dap'.continue()<CR>",options)
vim.keymap.set("n","<F10>",      "<Cmd>lua require'dap'.step_over()<CR>",options)
vim.keymap.set("n","<F11>",      "<Cmd>lua require'dap'.step_into()<CR>",options)
vim.keymap.set("n","<F12>",      "<Cmd>lua require'dap'.step_out()<CR>",options)
vim.keymap.set("n","<Leader>b",  "<Cmd>lua require'dap'.toggle_breakpoint()<CR>",options)
-- vim.keymap.set("n","<Leader>B   <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",options)
-- vim.keymap.set("n","<Leader>lp  <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>",options)
-- vim.keymap.set("n","<Leader>dr  <Cmd>lua require'dap'.repl.open()<CR>",options)
-- vim.keymap.set("n","<Leader>dl  <Cmd>lua require'dap'.run_last()<CR>",options)



--Setup Dap virtual text
require("nvim-dap-virtual-text").setup {
    commented = true,
  }



--Setup telescope dap extension
require('telescope').load_extension('dap')

--Setup dapui
require("dapui").setup()
local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
