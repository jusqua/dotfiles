-- : Checking package
local ok, autopairs = pcall(require, 'nvim-autopairs')
if not ok then
  return
end

local ok, autotags = pcall(require, 'nvim-ts-autotag')
if not ok then
  return
end

-- : Setup
autopairs.setup {}
autotags.setup {}

