
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex) 

vim.keymap.set("n", "<c-l>", "<c-w>l")
vim.keymap.set("n", "<c-h>", "<c-w>h")
vim.keymap.set("n", "<c-j>", "<c-w>j")
vim.keymap.set("n", "<c-k>", "<c-w>k")

-- mimic smell movements
vim.keymap.set("i", "<c-e>", "<esc>A")
vim.keymap.set("i", "<c-a>", "<esc>I")

-- leader o/O intserts blanklines
vim.keymap.set("n", "<leader>o", "o<esc>")
vim.keymap.set("n", "<leader>O", "O<esc>")

-- change buffer
vim.keymap.set("n", "L", "<CMD>bnext<CR>")
vim.keymap.set("n", "H", "<CMD>bprev<CR>")

-- select whole file
vim.keymap.set("n", "<c-a>", "ggVG")
vim.keymap.set("i", "<c-a>", "<esc>ggVG")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>term", "<CMD>split <bar> res 8 <bar> term<CR>i")

vim.keymap.set("n", "<A-h>", "<CMD>vertical resize -1<CR>")
vim.keymap.set("n", "<A-l>", "<CMD>vertical resize +1<CR>")
vim.keymap.set("n", "<A-j>", "<CMD>resize +1<CR>")
vim.keymap.set("n", "<A-k>", "<CMD>resize -1<CR>")
