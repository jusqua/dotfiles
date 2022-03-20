-- Aliases
local cmd = function (cmd) vim.api.nvim_exec(cmd, false) end

-- Terminam mode config
cmd [[
  augroup terminal
    autocmd!
    autocmd TermOpen * startinsert
    autocmd TermOpen * :set nonumber norelativenumber
  augroup end
]]

cmd [[
  augroup lastposition
    autocmd!
    autocmd BufReadPost *
      \ if &ft != "gitcommit" && &ft != "gitrebase" &&
      \ line("'\"") > 1 && line("'\"") <= line("$") |
      \ exe "normal! g`\"" |
      \ endif
  augroup end
]]

