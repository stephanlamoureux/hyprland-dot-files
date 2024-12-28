return {
	'mfussenegger/nvim-dap',
	dependencies = {
		'rcarriga/nvim-dap-ui',
		"nvim-neotest/nvim-nio",
		"leoluz/nvim-dap-go",
		'mfussenegger/nvim-dap-python',
		"suketa/nvim-dap-ruby",
	},
	config = function()
		local dap = require('dap')
		local dapui = require('dapui')

		require("dap-go").setup()
		require("dapui").setup()

		-- Configure JavaScript debugging with vscode-js-debug
		dap.adapters["pwa-node"] = {
			type = "server",
			host = "localhost",
			port = "${port}",
			executable = {
				command = "node",
				args = { "/usr/lib/node_modules/vscode-js-debug/src/dapDebugServer.js", "${port}" },
			}
		}
		dap.configurations.javascript = {
			{
				type = "pwa-node",
				request = "launch",
				name = "Launch file",
				program = "${file}",
				cwd = "${workspaceFolder}",
			},
		}

		-- Configure Python debugging with debugpy
		require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')

		-- Configure Lua debugging with local-lua-debugger-vscode
		dap.adapters["local-lua"] = {
			type = "executable",
			command = "node",
			args = {
				"/usr/lib/node_modules/local-lua-debugger-vscode/extension/debugAdapter.js"
			}
		}
		dap.configurations.lua = {
			{
				type = 'local-lua',
				request = 'launch',
				name = 'Launch',
				program = "${file}",
				cwd = vim.fn.getcwd(),
			},
		}

		-- Configure Ruby debugging with nvim-dap-ruby
		require('dap-ruby').setup()
		dap.configurations.ruby = {
			{
				type = 'ruby',
				request = 'launch',
				name = 'Debug Rails',
				program = 'bundle',
				programArgs = { 'exec', 'rdebug-ide', '--', '--host', '127.0.0.1', '--port', '12345' },
				useBundler = true,
			},
		}

		-- Listeners to open/close the dapui sidebar
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		-- Keybindings
		vim.keymap.set('n', '<Leader>dt', dap.toggle_breakpoint, {})
		vim.keymap.set('n', '<Leader>dc', dap.continue, {})
		vim.keymap.set('n', '<Leader>ds', dap.step_over, {})
		vim.keymap.set('n', '<Leader>di', dap.step_into, {})
		vim.keymap.set('n', '<Leader>do', dap.step_out, {})
	end,
}
