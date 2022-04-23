local ok, _ = pcall(require, "tokyonight")
if ok then
  let.tokyonight_style = "storm"
  cmd [[ colorscheme tokyonight ]]
else
  cmd [[ colorscheme default ]]
  set.background = "dark"
end

