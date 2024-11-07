return {
	{
		"williamboman/mason.nvim",
		config = true
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
			"ms-jpq/coq_nvim",
		},
		opts = {
			-- add LSPs here...
			ensure_installed = {
				"astro",
				"bashls",
				"cssls",
				"glsl_analyzer",
				"golangci_lint_ls",
				"html",
				"jsonls",
				"lua_ls",
				"pyright",
				"rust_analyzer",
				"ts_ls",
				"zls",
			},
			handlers = {
				function (server)
					require("lspconfig")[server].setup(require("coq").lsp_ensure_capabilities())
				end,
			}
		},
	},
}
