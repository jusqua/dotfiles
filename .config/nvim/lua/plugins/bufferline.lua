-- : Checking package
local ok, bufferline = pcall(require, 'bufferline')
if not ok then
  return
end

-- : Setup
bufferline.setup {
  options = {
    numbers = "none",
    modified_icon = "·",
    separator_style = { "|", "|" },
    left_trunc_marker = "⇠",
    right_trunc_marker = "⇢",
    max_name_length = 30,
    max_prefix_length = 30,
    tab_size = 25,
    diagnostics = false,
    diagnostics_update_in_insert = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indicators = false,
    show_buffer_default_icon = false,
  }
}

