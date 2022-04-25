-- : Functions
-- Mapping
function map(mode, new, old, options)
  local default = { noremap = true, silent = true }
  if not options then
    options = default
  end
  vim.api.nvim_set_keymap(mode, new, old, options)
end

nmap = function (keybinding, alias) map("n", keybinding, alias) end
imap = function (keybinding, alias) map("i", keybinding, alias) end
vmap = function (keybinding, alias) map("v", keybinding, alias) end
tmap = function (keybinding, alias) map("t", keybinding, alias) end

-- Custom behaviors
function close()
  -- Get the buffer amount
  local buffers = fn.len(fn.filter(fn.range(1, fn.bufnr('$')), 'buflisted(v:val)'))
  cmd ((not let.neovide and buffers == 1) and "q" or "bd")
end

