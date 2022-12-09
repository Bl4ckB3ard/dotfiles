local function map(m, k, v)
	vim.keymap.set(m, k, v, {silent = true})
end


vim.g.mapleader = " "


-- mimic smell movements
map("i", "<C-e>", "<ESC>A")
map("i", "<C-a>", "<ESC>I")


-- leader o/O intserts blanklines
map("n", "<leader>o", "o<ESC>")
map("n", "<leader>O", "O<ESC>")


-- split windows mappings
map("n", "<leader>vs", "<CMD>vertical split<CR>")
map("n", "<leader>hs", "<CMD>split<CR>")

map("n", "<C-l>", "<CMD>wincmd l<CR>")
map("n", "<C-h>", "<CMD>wincmd h<CR>")
map("n", "<C-j>", "<CMD>wincmd j<CR>")
map("n", "<C-k>", "<CMD>wincmd k<CR>")

map("n", "<A-h>", "<CMD>vertical resize -1<CR>")
map("n", "<A-l>", "<CMD>vertical resize +1<CR>")
map("n", "<A-j>", "<CMD>resize +1<CR>")
map("n", "<A-k>", "<CMD>resize -1<CR>")


-- <leaer>term split termnial
-- <bar> means |(pipe) so command is ":split | resize 8 | term <CR>i"
map("n", "<leader>term", "<CMD>split <bar> res 8 <bar> term<CR>i")


-- buffertab
map("n", "\\<tab>", "<CMD>BufferLineCycleNext<CR>")
map("n", "<leader>qh", "<CMD>BufferLineCloseLeft<CR>")
map("n", "<leader>ql", "<CMD>BufferLineCloseRight<CR>")
map("n", "<leader>qq", "<C-w>q")


--telescope maps
map("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
