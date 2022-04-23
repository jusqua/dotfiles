-- : Aliases
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- : Tweaks
-- Highlight yanks
augroup("YankHighlight", { clear = true })
autocmd("TextYankPost", {
  group = "YankHighlight",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = "1000" })
  end
})
-- Remove whitespace when write
autocmd("BufWritePre", {
  pattern = "*",
  command = ":%s/\\s\\+$//e"
})
-- Don't auto commenting new lines
autocmd("BufEnter", {
  pattern = "*",
  command = "set fo-=c fo-=r fo-=o"
})

-- : Terminal
-- Enter insert mode when switching to terminal
autocmd("TermOpen", {
  command = "setlocal nonumber norelativenumber nocursorline noshowmode noshowcmd"
})
-- Changes the terminal tab to terminal
autocmd("TermOpen", {
  command = "file Terminal"
})
-- Start in insert mode
autocmd("TermOpen", {
  pattern = "*",
  command = "startinsert"
})
-- Close terminal buffer on process exit
autocmd("BufLeave", {
  pattern = "term://*",
  command = "stopinsert"
})

-- : Opening file start on the last line, and ignores git files
autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local line = vim.fn.line
    local filetype = vim.bo.filetype
    if filetype ~= "gitcommit" and filetype ~= "gitrebase" and line("'\"") > 0 and line("'\"") <= line("$") then
      vim.cmd("normal! g`\"zvzz'")
    end
  end
})

