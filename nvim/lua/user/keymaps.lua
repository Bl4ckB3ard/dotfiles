
vim.keymap.set("n", "<leader>\\", "<CMD>NERDTreeToggle<CR>") 

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
vim.keymap.set("n", "<leader><c-a>", "ggVG")
vim.keymap.set("i", "<c-a>", "<esc>ggVG")

-- paste something put keep in registger
-- vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>term", "<CMD>split <bar> res 8 <bar> term<CR>i")

vim.keymap.set("n", "<A-h>", "<CMD>vertical resize -1<CR>")
vim.keymap.set("n", "<A-l>", "<CMD>vertical resize +1<CR>")
vim.keymap.set("n", "<A-j>", "<CMD>resize +1<CR>")
vim.keymap.set("n", "<A-k>", "<CMD>resize -1<CR>")


vim.keymap.set("n", "<leader>cs1", "<CMD>lua ColorMyPencils(1)<CR>")
vim.keymap.set("n", "<leader>cs2", "<CMD>lua ColorMyPencils(2)<CR>")
vim.keymap.set("n", "<leader>cs3", "<CMD>lua ColorMyPencils(3)<CR>")
vim.keymap.set("n", "<leader>cs4", "<CMD>lua ColorMyPencils(4)<CR>")

-- clipboard maps
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set({"n", "v"}, "<leader>p", "\"+p")

-- fix <c-d> and <c-u>
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")

-- run python file
vim.keymap.set("n", "<c-b>", "<CMD>!python3 %:p<CR>")

