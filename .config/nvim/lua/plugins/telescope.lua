-- : Checking package
local ok, telescope = pcall(require, 'telescope')
if not ok then
  return
end

-- : Setup
telescope.setup {
  extensions = {
    find_file = {
      hidden = true,
      no_ignore = true,
    },
    file_browser = {
      hidden = true,
      no_ignore = true,
      theme = "ivy",
    },
    project = {
      theme = "dropdown"
    }
  }
}

telescope.load_extension "file_browser"
telescope.load_extension "project"

