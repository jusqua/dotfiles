-- : Aliases
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

-- : Leader key
-- Set as Space key
map("", "<Space>", "<Nop>")
set.mapleader = " "
set.maplocalleader = " "

-- : Quick actions
-- Leader + w to write
nmap("<leader>w", ":w<CR>")
-- Leader + q to quit
nmap("<leader>q", ":q<CR>")
-- Y to yank entire text after cursor
nmap("Y", "y$")
-- L works like End key
nmap("L", "$")
-- H works like Home key
nmap("H", "^")
-- Leader + d to open docs
nmap("<leader>d", "<Help>")

-- : Tweaks
-- Keep visual when indent
vmap("<", "<gv")
vmap(">", ">gv")
-- Override delete behavior
nmap("d", '"_d')
vmap("d", '"_d')
-- Override paste behavior
vmap("p", '"_dP')
-- New line without insert
nmap("O", "O<Esc>")
nmap("o", "o<Esc>")
-- Redo instead of undo line
nmap("U", "<C-r>")
nmap("<C-r>", "<Nop>")
-- Disable Ex mode
nmap("Q", "<Nop>")
-- Fast Normal switch
imap("<A-x>", "<Esc>")

-- : Window navigation
-- Ctrl + Vi keys to navigate between window splits
nmap("<C-h>", "<C-w>h")
nmap("<C-j>", "<C-w>j")
nmap("<C-k>", "<C-w>k")
nmap("<C-l>", "<C-w>l")

-- : Window resizing
-- Ctrl + Arrow keys to resize window
nmap("<C-Up>", ":resize -2<CR>")
nmap("<C-Down>", ":resize +2<CR>")
nmap("<C-Right>", ":vertical resize -2<CR>")
nmap("<C-Left>", ":vertical resize +2<CR>")

-- : Window spliting
-- Leader + v to split vertically
nmap("<leader>v", "<C-w>v")
-- Leader + s to split horizontally
nmap("<leader>s", "<C-w>s")

-- : Tab control
-- Leader + n to open a new tab
nmap("<leader>n", ":tabedit<CR>")

-- : Tab navigation
-- Leader + l to move to the next tab
nmap("<leader>l", "gt")
-- Leader + h to move to the previous tab
nmap("<leader>h", "gT")
-- Leader + number to move to the numbered tab
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

-- : Moving text arround
-- Alt + k to move line up
nmap("<A-k>", ":move -2<CR>==")
imap("<A-k>", "<Esc>:move -2<CR>==gi")
vmap("<A-k>", ":move '<-2<CR>gv=gv")
-- Alt + j to move line down
nmap("<A-j>", ":move +1<CR>==")
imap("<A-j>", "<Esc>:move +1<CR>==gi")
vmap("<A-j>", ":move '>+1<CR>gv=gv")

-- : Terminal
-- Esc to set Normal mode on Terminal mode
tmap("<leader><Esc>", "<C-\\><C-N>")
-- Leader + t to open terminal on a tab
nmap("<leader>t", ":tabedit<CR>:terminal<CR>")

