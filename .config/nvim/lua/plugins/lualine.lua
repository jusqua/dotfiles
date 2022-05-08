-- : Checking package
local ok, lualine = pcall(require, 'lualine')
if not ok then
  return
end

-- : Setup
lualine.setup {
  options = {
    globalstatus = true,
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = { "toggleterm" }
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'filename' },
    lualine_c = { 'branch' },
    lualine_x = { 'diagnostics' },
    lualine_y = { 'filetype' },
    lualine_z = { 'progress' }
  },
}

