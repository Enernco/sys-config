return {
    {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
	    "nvim-lua/plenary.nvim",
	    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	    "MunifTanjim/nui.nvim",
	    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	lazy = false,
	config = function()
	    local tree = require("neo-tree")

	    tree.setup({
		window = {
		    position = "float"
		}
	    })

	    --vim.keymap.set("n", "<leader>cd", tree.toggle)
	end
    }
}
