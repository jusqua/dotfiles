-- : Aliases
-- Common
set = vim.opt
let = vim.g
cmd = vim.cmd
fn = vim.fn

-- Autocommand
augroup = vim.api.nvim_create_augroup
autocmd = vim.api.nvim_create_autocmd

-- Map
function map(mode, new, old, options)
  local default = { noremap = true, silent = true }
  if not options then
    options = default
  end
  vim.api.nvim_set_keymap(mode, new, old, options)
end
nmap = function (new, old) map("n", new, old) end
imap = function (new, old) map("i", new, old) end
vmap = function (new, old) map("v", new, old) end
tmap = function (new, old) map("t", new, old) end

