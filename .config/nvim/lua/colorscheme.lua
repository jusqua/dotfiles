-- : Checking package
local ok, _ = pcall(require, "tokyonight")
if not ok then
  return
end

-- : Setup
let.tokyonight_style = "storm"
cmd [[ colorscheme tokyonight ]]

