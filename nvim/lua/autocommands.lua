-- Aliases
local cmd = function (cmd) vim.api.nvim_exec(cmd, false) end

-- Autocommands
cmd [[
  augroup terminal
    autocmd!
    autocmd TermOpen * startinsert
    autocmd TermOpen * :set nonumber norelativenumber
  augroup END 
]]

