return {
	"echasnovski/mini.nvim",
	event = "VeryLazy",
	config = function()
		require("mini.ai").setup({ n_lines = 500 })
		require("mini.pairs").setup()
		require("mini.surround").setup()
		require("mini.operators").setup()
		require("mini.comment").setup()
		require("mini.align").setup()
		require("mini.diff").setup()
		require("mini.git").setup()
		require("mini.tabline").setup()
		require("mini.icons").setup()
		require("mini.notify").setup()
		require("mini.files").setup()
		require("mini.bracketed").setup()
		require("mini.keymap").setup()
		require("mini.statusline").setup()
		require("mini.trailspace").setup()

		local statusline = require("mini.statusline")
		statusline.setup({ use_icons = vim.g.have_nerd_font })
		statusline.section_location = function()
			return "%2l:%-2v"
		end

		local map_multistep = require("mini.keymap").map_multistep

		map_multistep("i", "<Tab>", { "pmenu_next" })
		map_multistep("i", "<S-Tab>", { "pmenu_prev" })
		map_multistep("i", "<CR>", { "pmenu_accept", "minipairs_cr" })
		map_multistep("i", "<BS>", { "minipairs_bs" })

		local miniclue = require("mini.clue")
		miniclue.setup({
			window = {
				delay = 100,
			},
			triggers = {
				-- Leader triggers
				{ mode = "n", keys = "<Leader>" },
				{ mode = "x", keys = "<Leader>" },

				-- Built-in completion
				{ mode = "i", keys = "<C-x>" },

				-- `g` key
				{ mode = "n", keys = "g" },
				{ mode = "x", keys = "g" },

				-- Marks
				{ mode = "n", keys = "'" },
				{ mode = "n", keys = "`" },
				{ mode = "x", keys = "'" },
				{ mode = "x", keys = "`" },

				-- Registers
				{ mode = "n", keys = '"' },
				{ mode = "x", keys = '"' },
				{ mode = "i", keys = "<C-r>" },
				{ mode = "c", keys = "<C-r>" },

				-- Window commands
				{ mode = "n", keys = "<C-w>" },

				-- `z` key
				{ mode = "n", keys = "z" },
				{ mode = "x", keys = "z" },
			},

			clues = {
				-- Enhance this by adding descriptions for <Leader> mapping groups
				miniclue.gen_clues.builtin_completion(),
				miniclue.gen_clues.g(),
				miniclue.gen_clues.marks(),
				miniclue.gen_clues.registers(),
				miniclue.gen_clues.windows(),
				miniclue.gen_clues.z(),
			},
		})
	end,
}
