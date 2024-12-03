require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "L", function()
  require("nvchad.tabufline").next()
end, {desc = "buffer goto prev"})

map("n", "H", function()
  require("nvchad.tabufline").prev()
end, {desc = "buffer goto prev"})


-- select whole file
map("n", "<leader><C-a>", "ggVG")

-- leader o/O intserts blanklines
map("n", "<leader>o", "o<esc>")
map("n", "<leader>O", "O<esc>")

-- mimic smell movements
map("i", "<c-e>", "<esc>A")
map("i", "<c-a>", "<esc>I")

-- dd to a void registger
map("n", "<leader>dd", "\"_dd")

-- fix <c-d> and <c-u>
map("n", "<c-d>", "<c-d>zz")
map("n", "<c-u>", "<c-u>zz")
