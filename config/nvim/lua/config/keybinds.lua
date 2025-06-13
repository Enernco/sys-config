local m = vim.keymap.set

m("t", "<Esc>", "<C-\\><C-n>")
m("n", "<leader>cd", ":Neotree<Enter>")
m("n", "<C-tab>", ":Neotree buffers<Enter>")

m("n", "<leader>bd", ":DBUIToggle<Enter>")

m("n", "<C-j>", ":bel 10split | term<CR>")
