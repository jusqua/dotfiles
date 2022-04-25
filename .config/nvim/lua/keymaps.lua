-- : Leader key
-- Set as Space key
map("", "<Space>", "<Nop>")
let.mapleader = " "
let.maplocalleader = " "

-- : Quick actions
-- Set shortcut to open a file
map("n", "<leader><leader>", ":edit ", noremap)
-- Leader + q, if remains one buffer then quit else delete the current buffer
nmap("<leader>q", ":lua close()<CR>")
-- Leader + w to write
nmap("<leader>w", ":w<CR>")
-- Y to yank entire text after cursor
nmap("Y", "y$")
-- L works like End key
nmap("L", "$")
-- H works like Home key
nmap("H", "^")

-- : Tweaks
-- Keep visual when indent
vmap("<", "<gv")
vmap(">", ">gv")
-- Override delete behavior
nmap("d", '"_d')
nmap("D", '"_D')
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
imap("jk", "<Esc>")

-- : Buffer navigation
-- Leader + l to move to the next buffer
nmap("<C-l>", ":bn<CR>")
-- Leader + h to move to the previous buffer
nmap("<C-h>", ":bp<CR>")
-- Leader + number to move to the numbered buffer
nmap("<C-1>", ":bf<CR>")
nmap("<C-2>", ":b2<CR>")
nmap("<C-3>", ":b3<CR>")
nmap("<C-4>", ":b4<CR>")
nmap("<C-5>", ":b5<CR>")
nmap("<C-6>", ":b6<CR>")
nmap("<C-7>", ":b7<CR>")
nmap("<C-8>", ":b8<CR>")
nmap("<C-9>", ":b9<CR>")
nmap("<C-0>", ":bl<CR>")

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
tmap("<Esc><Esc>", "<C-\\><C-N>:bd!<CR>")
-- Leader + t to open terminal
nmap("<leader>t", ":ToggleTerm<CR>")

