-- Aliases
local set = vim.g

local function map(mode, new, old, options)
  local default = { noremap = true, silent = true }
  if not options then
    options = default
  end
  vim.api.nvim_set_keymap(mode, new, old, options)
end

local function nmap(new, old)
  map("n", new, old)
end

local function imap(new, old)
  map("i", new, old)
end

local function vmap(new, old)
  map("v", new, old)
end

-- Leader key
map("", "<Space>", "<Nop>")
set.mapleader = " "
set.maplocalleader = " "

-- Window navigation
nmap("<C-h>", "<C-w>h")
nmap("<C-j>", "<C-w>j")
nmap("<C-k>", "<C-w>k")
nmap("<C-l>", "<C-w>l")

-- Window resize
nmap("<C-Up>", ":resize -2<CR>")
nmap("<C-Down>", ":resize +2<CR>")
nmap("<C-Left>", ":vertical resize -2<CR>")
nmap("<C-Right>", ":vertical resize +2<CR>")

-- Window split
nmap("<leader><Enter>", "<C-w>v")
nmap("<leader>q", ":close<CR>")

-- Tab control
nmap("<leader>tn", ":tabnew<CR>")
nmap("<leader>tc", ":tabclose<CR>")
nmap("<leader>to", ":tabonly<CR>")

-- Tab navigation
nmap("<leader>l", ":tabNext<CR>")
nmap("<leader>h", ":tabprevious<CR>")

-- Quicksave
nmap("<leader>w", ":w<CR>")

