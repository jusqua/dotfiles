-- : Checking package
local ok, bufferline = pcall(require, 'bufferline')
if not ok then
  return
end

-- : Setup
bufferline.setup {
  options = {
    show_buffer_close_icons = false,
    show_close_icons = false,
    show_tab_indicators = false,
    always_show_bufferline = false
  }
}

