-- : Checking package
local ok, lualine = pcall(require, 'lualine')
if not ok then
  return
end

-- : Setup
lualine.setup {
  options = {
    globalstatus = true,
    component_separators = { left = '·', right = '·' },
    section_separators = { left = '|', right = '|' },
    disabled_filetypes = { "toggleterm", "alpha" }
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff' },
    lualine_c = { 'filename' },
    lualine_x = { 'filetype', 'diagnostics' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
}

