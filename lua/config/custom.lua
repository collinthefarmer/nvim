-- mappings
vim.g.mapleader = "\\"
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.colorcolumn = "80,120"

local wk = require("which-key")

wk.add({
	{ "<leader>1",  "<cmd>Neotree toggle<cr>",                                       desc = "Neotree File Window" },
	{ "<leader>2",  "<cmd>Telescope find_files<cr>",                                 desc = "Telescope: Find Files" },
	{ "<leader>3",  "<cmd>Telescope buffers<cr>",                                    desc = "Telescope: Buffers" },
	--
	{ "<leader>p",  "<cmd>Themify<cr>",                                              desc = "Themify" },
	--
	{ "<leader>w",  group = "Save..." },
	{ "<leader>ww", "<cmd>w<cr>",                                                    desc = "Save" },
	{ "<leader>wq", "<cmd>wq<cr>",                                                   desc = "Save & Quit" },
	--
	{ "<leader>q",  group = "Quit..." },
	{ "<leader>q",  "<cmd>q<cr>",                                                    desc = "Quit" },
	{ "<leader>qq", "<cmd>qa!<cr>",                                                  desc = "Force Quit" },
	--
	{ "<leader>f",  "<cmd>lua vim.lsp.buf.format({ async = false })<cr>",            desc = "Format" },
	{ "<leader>K",  "<cmd>sp `=$HOME .. '/.config/nvim/lua/config/custom.lua'`<cr>", desc = "Open Config" },
	--
	{ "<C-q>",      "<cmd>lua vim.lsp.buf.hover()<cr>",                              desc = "Hover" },
	{ "<C-b>",      "<cmd>lua vim.lsp.buf.implementation()<cr>",                     desc = "Implementation" },
})
