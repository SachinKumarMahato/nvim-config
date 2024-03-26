return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		config = function()
			local neotree_is_open = false

			vim.keymap.set("n", "<C-b>", ":lua toggle_neotree()<CR>", {})

			function toggle_neotree()
				if neotree_is_open then
						vim.cmd(":Neotree close")
						neotree_is_open = false
				else
						vim.cmd(":Neotree filesystem reveal left")
						neotree_is_open = true
				end
			end

			vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
		end,
	},
}

