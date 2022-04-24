-- : Checking package
local ok, lualine = pcall(require, 'lualine')
if not _ok then
  return
end
