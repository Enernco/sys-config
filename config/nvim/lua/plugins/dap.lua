return {
    {
	"mfussenegger/nvim-dap",
	dependencies = {
	    "nvim-neotest/nvim-nio",
	    "rcarriga/nvim-dap-ui",
	    "jay-babu/mason-nvim-dap.nvim"
	},
	config = function()
	    local dap = require("dap")
	    local dapui =  require("dapui")

	    require("mason-nvim-dap").setup()

	    dapui.setup()

	    vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
	    vim.keymap.set("n", "<leader>gb", dap.run_to_cursor)

	    vim.keymap.set("n", "<F5>", dap.continue)
	    vim.keymap.set("n", "<F10>", dap.step_over)
	    vim.keymap.set("n", "<F11>", dap.step_into)
	    vim.keymap.set("n", "<S-F5>", dap.restart)
	end
    }
}
