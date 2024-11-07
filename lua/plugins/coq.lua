return {
	{
		"ms-jpq/coq_nvim",
		dependencies = {
			"ms-jpq/coq.artifacts",
		},
		init = function()
			vim.g.coq_settings = {
				auto_start = "shut-up",
			}
		end,
	},
}
