local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins", {
	rocks = {
		enabled = false,
	},
})

-- Set Python3 provider
vim.g.python3_host_prog = vim.fn.expand("~/.local/share/nvim/py3nvim/bin/python")

-- Enable and set the Perl provider
vim.g.loaded_perl_provider = 1
vim.g.perl_host_prog = vim.fn.exepath("perl")
