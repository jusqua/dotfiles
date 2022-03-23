-- : Aliases
local set = vim.opt
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

