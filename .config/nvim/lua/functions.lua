-- : Functions
-- Mapping
function map(mode, new, old, silent)
  local options = { noremap = true, silent = silent }
  vim.api.nvim_set_keymap(mode, new, old, options)
end

nmap = function (keybinding, alias, silent) map("n", keybinding, alias, silent) end
imap = function (keybinding, alias, silent) map("i", keybinding, alias, silent) end
vmap = function (keybinding, alias, silent) map("v", keybinding, alias, silent) end
tmap = function (keybinding, alias, silent) map("t", keybinding, alias, silent) end

-- Custom behaviors
function close()
  -- Get the buffer amount
  local buffers = fn.len(fn.filter(fn.range(1, fn.bufnr('$')), 'buflisted(v:val)'))
  cmd ((not let.neovide and buffers == 1) and "q" or "bd")
end

