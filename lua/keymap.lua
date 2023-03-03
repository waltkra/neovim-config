local keymap = vim.keymap

-- Normal: Press enter to insert
keymap.set("n", "<CR>", "<Insert>", {})

-- Undo three modes
keymap.set("n", "<C-Z>", "<Undo>", {})
keymap.set("i", "<C-Z>", "<Esc><Undo>", {})
keymap.set("v", "<C-Z>", "<Esc><Undo>", {})

keymap.set("n", "<C-W><C-Q>", ":q!<CR>", {}) -- Force quit
keymap.set("n", "<C-S>", ":w<CR>", {}) -- Save
keymap.set("i", "<C-S>", "<ESC>:w<CR>a", {}) -- Save

-- Moving line three modes
keymap.set("n", "<A-Down>", ":m .+1<CR>==", {})
keymap.set("n", "<A-Up>", ":m .-2<CR>==", {})
keymap.set("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", {})
keymap.set("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", {})
keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", {})
keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", {})

keymap.set("n", "<C-a>", "<C-Home>V<C-End>", {}) -- Normal: Select all
keymap.set("i", "<C-v>", '<ESC>"+p<ESC>a', {}) -- Insert: Paste
keymap.set("v", "<C-v>", '"+p<ESC><End>a', {}) -- Visual: Paste
keymap.set("v", "<C-c>", '"+y', {}) -- Visual: copy

keymap.set("n", "<A-Right>", ":tabnext <CR>", {})
keymap.set("n", "<A-Left>", ":tabprevious <CR>", {})
keymap.set("i", "<A-Right>", "<Esc>:tabnext <CR>", {})
keymap.set("i", "<A-Left>", "<Esc>:tabprevious <CR>", {})
