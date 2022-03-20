-- Aliases
local set = vim.g

local function map(mode, new, old, options)
  local default = { noremap = true, silent = true }
  if not options then
    options = default
  end
  vim.api.nvim_set_keymap(mode, new, old, options)
end

local nmap = function (new, old) map("n", new, old) end
local imap = function (new, old) map("i", new, old) end
local vmap = function (new, old) map("v", new, old) end
local tmap = function (new, old) map("t", new, old) end

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
nmap("<C-Right>", ":vertical resize -2<CR>")
nmap("<C-Left>", ":vertical resize +2<CR>")

-- Window split
nmap("<leader>v", "<C-w>v")
nmap("<leader>s", "<C-w>s")

-- Tab control
nmap("<leader>n", ":tabedit<CR>")

-- Tab navigation
nmap("<leader>l", "gt")
nmap("<leader>h", "gT")

nmap("<leader>1", ":tabfirst<CR>")
nmap("<leader>2", ":tabnext 2<CR>")
nmap("<leader>3", ":tabnext 3<CR>")
nmap("<leader>4", ":tabnext 4<CR>")
nmap("<leader>5", ":tabnext 5<CR>")
nmap("<leader>6", ":tabnext 6<CR>")
nmap("<leader>7", ":tabnext 7<CR>")
nmap("<leader>8", ":tabnext 8<CR>")
nmap("<leader>9", ":tabnext 9<CR>")
nmap("<leader>0", ":tabnext 10<CR>")

-- Quick actions
nmap("<leader>w", ":w<CR>")
nmap("<leader>q", ":q<CR>")

-- Custom navigations
nmap("L", "$")
nmap("H", "^")

-- Moving text
nmap("<A-k>", ":move -2<CR>==")
nmap("<A-j>", ":move +1<CR>==")

imap("<A-k>", "<Esc>:move -2<CR>==gi")
imap("<A-j>", "<Esc>:move +1<CR>==gi")

vmap("<A-k>", ":move '<-2<CR>gv=gv")
vmap("<A-j>", ":move '>+1<CR>gv=gv")

-- Keep visual when indent
vmap("<", "<gv")
vmap(">", ">gv")

-- Override visual mode paste behavior
vmap("p", '"_dP')

-- Override delete behavior
nmap("d", '"_d')
vmap("d", '"_d')

-- New line without insert
nmap("O", "O<Esc>")
nmap("o", "o<Esc>")

-- Redo instead of undo line
nmap("U", "<C-r>")
nmap("<C-r>", "<Nop>")

-- Disable Ex mode
nmap("Q", "<Nop>")

