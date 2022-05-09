-- : Leader key
-- Set as Space key
map("", "<Space>", "<Nop>")
let.mapleader = " "
let.maplocalleader = " "

-- : Quick actions
-- Open file
nmap("<leader><leader>", ":Telescope file_browser<CR>")
-- Open files by file name
nmap("<leader>ff", ":Telescope find_files<CR>")
-- Open hidden files
nmap("<leader>fh", ":Telescope find_files hidden=true no_ignore=true<CR>")
-- Open already opened files
nmap("<leader>fo", ":Telescope oldfiles<CR>")
-- Open files by word
nmap("<leader>fp", ":Telescope project<CR>")
-- To the dotfiles
nmap("<leader>fc", ":cd ~/.dotfiles | Telescope file_browser<CR>")
-- Update Plugins
nmap("<leader>up", ":PackerSync<CR>")
-- Update Treesiter
nmap("<leader>ut", ":TSUpdateSync<CR>")
-- Delete buffer
nmap("<leader>d", ":lua handle_close()<CR>")
-- Quit
nmap("<leader>q", ":confirm qa<CR>")
-- Write file
nmap("<leader>w", ":w<CR>")
-- Y to yank entire text after cursor
nmap("Y", "y$")
-- L works like End key
map({ "n", "v" }, "L", "$")
-- H works like Home key
map({ "n", "v" }, "H", "^")

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
-- Redo instead of undo line
nmap("U", "<C-r>")
nmap("<C-r>", "<Nop>")
-- Disable Ex mode
nmap("Q", "<Nop>")
-- Fast Normal switch
imap("jk", "<Esc>")
imap("kj", "<Esc>")
-- Turn off search highlight when hit ESC
nmap("<Esc>", ":noh<CR>")

-- : Buffer navigation
-- Leader + l to move to the next buffer
nmap("<Tab>", ":bn<CR>")
-- Leader + h to move to the previous buffer
nmap("<S-Tab>", ":bp<CR>")
-- Leader + number to move to the numbered buffer
nmap("<leader>bp", ":BufferLinePick<CR>")

-- : Moving text arround
-- Alt + k to move line up
nmap("<A-k>", ":move -2<CR>==")
imap("<A-k>", "<Esc>:move -2<CR>==gi")
vmap("<A-k>", ":move '<-2<CR>gv=gv")
-- Alt + j to move line down
nmap("<A-j>", ":move +1<CR>==")
imap("<A-j>", "<Esc>:move +1<CR>==gi")
vmap("<A-j>", ":move '>+1<CR>gv=gv")

-- : Gitsigns
-- Toggle
nmap("<leader>tg", ":lua toggle_gitsigns()<CR>")

-- : Terminal
-- Leader + t to open terminal
nmap("<C-\\>", ":ToggleTerm<CR>")
-- Esc to set Normal mode on Terminal mode
tmap("<Esc><Esc>", "<C-\\><C-N>:ToggleTerm<CR>")

