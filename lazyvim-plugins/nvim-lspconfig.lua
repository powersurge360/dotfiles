local function rubocop_cmd(bundler_found)
	if bundler_found then
		return { "bundle", "exec", "rubocop", "--lsp" }
	end

	return { "rubocop", "--lsp" }
end

local bundler_patterns = { "Gemfile" }
local bundler_found = vim.fs.dirname(vim.fs.find(bundler_patterns, { upward = true })[1])

return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				ruby_lsp = {
					mason = false,
					-- cmd = { "ruby-lsp" },
				},
				rubocop = {
					mason = false,
					cmd = rubocop_cmd(bundler_found),
				},
			},
		},
	},
}
