return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local lualine = require("lualine")

		lualine.setup({
			options = {
				icons_enabled = true,
				theme = "ayu_dark",
				globalstatus = true,
			},
			tabline = {
				lualine_a = { "mode" },
				lualine_b = { "buffers" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			sections = {},
		})

		vim.opt.laststatus = 0
	end,
}
