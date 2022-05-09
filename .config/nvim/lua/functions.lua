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

-- Toggle gitsigns
function toggle_gitsigns()
  cmd [[ Gitsigns toggle_numhl  ]]
  cmd [[ Gitsigns toggle_linehl ]]
  cmd [[ Gitsigns toggle_signs  ]]
end

function handle_close()
  local is_last_buffer = fn.len(fn.getbufinfo({ buflisted = 1})) == 1
  cmd [[ bdelete ]]
  if (is_last_buffer) then
    cmd [[ Alpha ]]
  end
end

