return  {
    "ThePrimeagen/harpoon",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = true,
	keys = {
		{ "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file with harpoon" },
		{ "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = "Go to next harpoon mark" },
		{ "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = "Go to previous harpoon mark" },
		{ "<leader>hm", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks" },

		{ "<leader>h1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Navigate to file 1" },
		{ "<leader>h2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Navigate to file 2" },
		{ "<leader>h3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Navigate to file 3" },
		{ "<leader>h4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "Navigate to file 4" },
	},
}
