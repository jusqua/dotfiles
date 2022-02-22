-- Aliases
local set = vim.opt
local cmd = vim.cmd

-- Line indicator
set.number = true
set.relativenumber = true
set.numberwidth = 4
set.cursorline = true
set.scrolloff = 8
set.sidescrolloff = 8

-- Tabulation
set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2

-- File manipulation
set.fileencoding = "utf-8"
set.backup = false
set.swapfile = false
set.undofile = true
set.clipboard = "unnamedplus"

-- Visualization
set.wrap = false
set.splitbelow = true
set.splitright = true
set.mouse = "a"
set.termguicolors = true
set.conceallevel = 0

-- Search
set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

