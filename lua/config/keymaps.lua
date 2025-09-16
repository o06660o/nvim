vim.keymap.set("n", "<C-a>", "ggVG")

vim.keymap.set("n", "<C-s>", ":w<CR>")

-- Let konsole use the keymap `<C-LeftMouse>`.
vim.keymap.set("n", "<C-LeftMouse>", "")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-w>h", "<C-\\><C-n><C-w>h")
vim.keymap.set("t", "<C-w>j", "<C-\\><C-n><C-w>j")
vim.keymap.set("t", "<C-w>k", "<C-\\><C-n><C-w>k")
vim.keymap.set("t", "<C-w>l", "<C-\\><C-n><C-w>l")
