-- : Checking package
local ok, telescope = pcall(require, 'telescope')
if not ok then
  return
end

-- : Setup
telescope.setup {}

