-- : Checking package
local ok, alpha = pcall(require, 'alpha')
if not ok then
  return
end

-- : Setup
local dashboard = require "alpha.themes.dashboard"

dashboard.section.header.val = {
  [[    ╔╕         ╔╕    ]],
  [[  ╔╬╫╫╫╦       ╟▓▓╕  ]],
  [[╔╫╫╫╫╫╫╫╕      ╟▓▓▓▓╕]],
  [[╠╫╫╫╫╫╫╫╫╫╕    ║▓▓▓▓▌]],
  [[╟╫╫╫╫╫╫╫╫╫╫╕   ║▓▓▓▓▌]],
  [[╟╫╫╫╫╫ ╢╫╫╫╫╬╕ ║▓▓▓▓▌]],
  [[╟╫╫╫╫╫  ╙╫╫╫╫╫╕║▓▓▓▓▌]],
  [[╟╫╫╫╫╫   `╬╫╫╫╫╣▓▓▓▓▌]],
  [[╟╫╫╫╫╫     ╚╫╫╫╣▓▓▓▓▌]],
  [[ ╙╣╫╫╫      `▓▓▓▓▓█╜ ]],
  [[   ╙╣╫        ╟▓█╨   ]],
}

dashboard.section.buttons.val = {
  dashboard.button("SPC SPC", "  New File",        ":Telescope file_browser<CR>"),
  dashboard.button("SPC f f", "  Find File",       ":Telescope find_files<CR>"),
  dashboard.button("SPC f o", "ﮮ  Recent File",     ":Telescope oldfiles<CR>"),
  dashboard.button("SPC f p", "  Projects",        ":Telescope project<CR>"),
  dashboard.button("SPC f c", "  Configuration",   ":cd ~/.dotfiles | Telescope file_browser hidden=true no_ignore=true<CR>"),
  dashboard.button("q",       "  Exit Neovim",     ":qa<CR>"),
}

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true

alpha.setup(dashboard.opts)

