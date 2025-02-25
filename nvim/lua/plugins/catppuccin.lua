return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			integrations = {
				treesitter = true,
				telescope = true,
				neotree = true,
			},
		})
		vim.cmd("colorscheme catppuccin-mocha")
	end,
}
