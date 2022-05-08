-- : Functions
-- Mapping
function map(mode, new, old, options)
  options = options or { noremap = true, silent = true }
  vim.keymap.set(mode, new, old, options)
end

nmap = function (keybinding, alias, options) map("n", keybinding, alias, options) end
imap = function (keybinding, alias, options) map("i", keybinding, alias, options) end
vmap = function (keybinding, alias, options) map("v", keybinding, alias, options) end
tmap = function (keybinding, alias, options) map("t", keybinding, alias, options) end

-- Custom behaviors
function close()
  -- Get the buffer amount
  local buffers = fn.len(fn.filter(fn.range(1, fn.bufnr('$')), 'buflisted(v:val)'))
  cmd ((not let.neovide and buffers == 1) and "q" or "bd")
end

