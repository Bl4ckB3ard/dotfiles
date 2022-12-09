local on_attach = function(client, buffer)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {buffer = 0})
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {buffer=0})
		if client.server_capabilities.document_formatting then
			vim.cmd([[
				augroup formatting
					autocmd! * <buffer>
					autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()
					autocmd BufWritePre <buffer> lua OrganizeImports(1000)
				augroup END
			]])
		end
end


local lspconfig = require("lspconfig")

-- debug
vim.keymap.set("n", "<leader>test", "<CMD>e /home/colton/.go/code/src/github.com/Bl4ckB3ard/golang-server-tool/main.go<CR>")

local cmp = require'cmp'
cmp.setup({
snippet = {
   expand = function(args)
     require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
   end,
},
  mapping = {
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, -- For luasnip users.
  }, {
    { name = 'buffer' },
  })
})
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())


lspconfig.gopls.setup {
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		gopls = {
			gofumpt = true,
		},
	},
	flags = {
		debounce_text_changes = 150,
	},
}

lspconfig.pylsp.setup {
	capabilities = capabilities,
	on_attach = on_attach,
	flags = {
		debounce_text_changes = 150,
	},
}
