-- : Checking package
local ok, treesitter = pcall(require, 'nvim-treesitter.configs')
if not ok then
  return
end

-- : Setup
treesitter.setup {
  sync_install = false,
  ensure_installed = {
    "lua",
    "fish",
    "yaml",
  },
  highlight = {
    enable = true,
    use_languagetree = true,
    additional_vim_regex_highlighting = false,
  },
}

