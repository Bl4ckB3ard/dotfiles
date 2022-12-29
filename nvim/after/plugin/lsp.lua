local lsp = require("lsp-zero")

lsp.preset('recommended')

lsp.ensure_installed({
	'pyright',
	'gopls',
	'clangd'
})

local cmp = require("cmp")
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<c-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), {'i'}),
    ['<c-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), {'i'}),
	['<c-space>'] = cmp.mapping.select_next_item(cmp_select),
	['<cr>'] = cmp.mapping.confirm({ select = true })
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr><ESC>", opts)
end)

lsp.setup()
