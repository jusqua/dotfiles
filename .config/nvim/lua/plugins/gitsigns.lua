-- : Checking package
local ok, gitsigns = pcall(require, 'gitsigns')
if not ok then
  return
end

-- : Setup
gitsigns.setup {
  signs = {
    add          = { text = 'A' },
    change       = { text = 'C' },
    changedelete = { text = 'C' },
    delete       = { text = 'D' },
    topdelete    = { text = 'D' },
  },
  signcolumn = false,
  update_debounce = 200,
}

