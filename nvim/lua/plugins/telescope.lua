return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-project.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			local themes = require("telescope.themes")

			-- Key mappings for Telescope commands
			vim.keymap.set("n", "<leader>ff", function()
				builtin.find_files(themes.get_dropdown({ hidden = true }))
			end, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
			vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})

			-- Set up the Projects extension
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
					projects = {
						base_dirs = {
							{ "~/Code", max_depth = 5 },
						},
						hidden_files = true,
					},
				},
			})

			-- Load the extensions
			require("telescope").load_extension("project")
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
