return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				ruby_lsp = {
					mason = false,
					cmd = { "mise", "x", "--", "ruby-lsp" },
				},
				rubocop = {
					mason = false,
					-- cmd = { "rubocop" },
					cmd = { "bundle", "exec", "rubocop", "--lsp" },
				},
			},
		},
	},
}
