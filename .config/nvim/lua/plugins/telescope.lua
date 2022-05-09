-- : Checking package
local ok, telescope = pcall(require, 'telescope')
if not ok then
  return
end

-- : Setup
telescope.setup {
  extensions = {
    file_browser = {
      theme = "ivy",
    },
    project = {
      theme = "dropdown"
    }
  }
}

telescope.load_extension "file_browser"
telescope.load_extension "project"

