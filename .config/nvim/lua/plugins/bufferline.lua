-- : Checking package
local ok, bufferline = pcall(require, 'bufferline')
if not ok then
  return
end

-- : Setup
bufferline.setup {
  options = {
    numbers = "none",
    buffer_close_icon = "",
    close_icon = "",
    max_name_length = 30,
    max_prefix_length = 30,
    tab_size = 20,
    diagnostics = false,
    diagnostics_update_in_insert = false,
    show_buffer_close_icons = false,
    show_close_icons = false,
    show_tab_indicators = false,
    always_show_bufferline = false,
  }
}

