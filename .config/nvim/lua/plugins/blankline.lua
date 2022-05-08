-- : Checking package
local ok, blankline = pcall(require, 'indent_blankline')
if not ok then
  return
end

-- : Setup
blankline.setup {
  indent_blankline_enabled = false,
  show_trailing_blankline_indent = false,
}

