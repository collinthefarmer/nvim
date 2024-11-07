-- mappings
vim.g.mapleader = "\\"

local wk = require("which-key")

wk.add({
	{ "<leader><tab>", group = "file" },
	{ "<leader><tab>1", "<cmd>Neotree toggle<cr>", desc = "Neotree File Window" },
	{ "<leader><tab>2", "<cmd>Telescope<cr>", desc = "Telescope" },
})
