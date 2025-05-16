local cmp = require("cmp")

cmp.setup({
  mapping = cmp.mapping.preset.insert({
	['<C-b>'] = cmp.mapping.scroll_docs(-4),
	['<C-f>'] = cmp.mapping.scroll_docs(4),
	['<C-o>'] = cmp.mapping.complete(),
	['<C-e>'] = cmp.mapping.abort(),
	['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    snippet = {
	expand = function(args)
--	    require('vsnip').lsp_expand(args.body)
	    vim.fn['vsnip#anonymous'](args.body)
	end,
    },
    sources = cmp.config.sources({
	{ name = 'nvim_lsp' },
	{  name = 'vsnip' },
	{ name = "vim-dadbod-completion" }
    }, {
	{ name = 'buffer' },
    }),
})
