-- : Aliases
local function cmd (string)
  vim.api.nvim_exec(string, false)
end

-- : Terminal mode startup config
-- Starts in insert mode
-- Starts without numbers
cmd [[
  augroup terminal
    autocmd!
    autocmd TermOpen * startinsert
    autocmd TermOpen * :set nonumber norelativenumber
  augroup end
]]

-- : Opening file start on the last line
-- Ignores git files for this
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

