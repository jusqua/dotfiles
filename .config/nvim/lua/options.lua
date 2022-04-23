-- : Aliases
local set = vim.opt
local let = vim.g
local cmd = vim.cmd

-- : Line indicator
-- Add numbers of the lines
set.number = true
-- Add relative position
set.relativenumber = true
-- Highlight cursor line
set.cursorline = true
-- Vertical visual padding
set.scrolloff = 8
-- Horizontal visual padding
set.sidescrolloff = 8

-- : Tabulation
-- Use spaces instead of tabs
set.expandtab = true
-- Number of tabs when tab
set.tabstop = 2
-- Number of spaces to reproduce tab
set.softtabstop = 2
-- Number of tabs when (auto)indent
set.shiftwidth = 2
-- Auto indent next lines based on previous ones
set.autoindent = true

-- : File manipulation
-- Force char encoding to 8-bit
set.fileencoding = "utf-8"
-- Do not make backup when change files
set.backup = false
-- Do not make swap files
set.swapfile = false
-- Persistent changes on buffer
set.undofile = true
-- Use system clipboard
set.clipboard = "unnamedplus"
-- Change work directory to the current file path
set.autochdir = true
-- Read file again when it is changed externally
set.autoread = true

-- : Visualization
-- Do not wrap when line reach the linmit
set.wrap = false
-- Vertical splits appear bellow
set.splitbelow = true
-- Horizontal splits appear in the right
set.splitright = true
-- Use mouse on all modes
set.mouse = "a"
-- Use terminal colors
set.termguicolors = true
-- Change the command prompt size
set.cmdheight = 1
-- Set statusline as global
set.laststatus = 3

-- : Search
-- Highlight searchs
set.hlsearch = true
-- Follow the first search match
set.incsearch = true
-- Ignore case when searching
set.ignorecase = true
-- Smart searching cases
set.smartcase = true

-- : Tweaks
-- Don't show mode
set.showmode = false
-- Command history limit
set.history = 50
-- Fold lines manually
set.foldmethod = "manual"
-- Suppress completion info
set.shortmess:append "c"
-- Wrap throught new line with arrow keys
set.whichwrap:append "<,>,[,]"
-- Considers hyphen and underline was word letters
set.iskeyword:append "-,_"

-- : GUI
set.guifont = {"Hack", "h11"}

-- : Colorscheme
let.tokyonight_style = "storm"
cmd [[ colorscheme tokyonight ]]

-- : Neovide
if (let.neovide) then
  -- Window aspects
  let.neovide_refresh_rate = 75
  let.neovide_no_idle = true
  let.neovide_fullscreen = true
  -- Visual Effects
  let.neovide_cursor_animation_lenght = 0.01
  let.neovide_cursor_trail_lenght = 0.01
  let.neovide_cursor_antialiasing = true
  let.neovide_cursor_vfx_mode = "wireframe"
  let.neovide_cursor_vfx_opacity = 100
  let.neovide_cursor_vfx_particle_lifetime = 0.5
end

