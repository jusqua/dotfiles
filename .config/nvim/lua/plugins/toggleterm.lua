-- : Checking package
local ok, toggleterm = pcall(require, 'toggleterm')
if not ok then
  return
end

-- : Setup
toggleterm.setup({
	size = 20,
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
  close_on_exit = true,
	direction = "float",
	float_opts = {
		border = "double",
		winblend = 0,
	},
})
