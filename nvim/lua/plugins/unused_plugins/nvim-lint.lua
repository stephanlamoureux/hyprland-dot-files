return {
	{
		"mfussenegger/nvim-lint",
		lazy = false,
		config = function()
			require('lint').linters_by_ft = {
				javascript = { 'eslint_d' },
				typescript = { 'eslint_d' },
				javascriptreact = { 'eslint_d' },
				typescriptreact = { 'eslint_d' },
				vue = { 'eslint_d' },
				svelte = { 'eslint_d' },
				yaml = { 'eslint_d' },
				json = { 'eslint_d' },
				jsonc = { 'eslint_d' },
				markdown = { 'eslint_d' },
			}

			vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "TextChanged" }, {
				callback = function()
					require('lint').try_lint()
				end,
			})

			vim.keymap.set("n", "<leader>gf", function()
				vim.lsp.buf.format({ async = true })
			end, { noremap = true, silent = true, desc = "Format Code" })
		end,
	},
}
