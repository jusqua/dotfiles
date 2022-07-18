-- : Checking package
local ok, _ = pcall(require, "catppuccin")
if not ok then
  return
end

-- : Setup
let.catppuccin_flavor = "mocha"

current_colorscheme = "catppuccin"

