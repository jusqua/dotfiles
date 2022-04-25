-- : Functions
-- Mapping
function map(mode, new, old, options)
  local default = { noremap = true, silent = true }
  if not options then
    options = default
  end
  vim.api.nvim_set_keymap(mode, new, old, options)
end

nmap = function (map, alias, options) map("n", map, alias, options) end
imap = function (map, alias, options) map("i", map, alias, options) end
vmap = function (map, alias, options) map("v", map, alias, options) end
tmap = function (map, alias, options) map("t", map, alias, options) end

