return {
  "folke/which-key.nvim",
  event = "VimEnter",
  opts = {
  },
  keys = {
    { "<leader>c", group = "[C]ode" },
    -- { "<leader>c_", hidden = true }, -- hides the group entry itself
    { "<leader>d", group = "[D]ocument" },
    -- { "<leader>d_", hidden = true },
    { "<leader>h", group = "Git [H]unk" }, -- This group will be overshadowed by the actual keymap below
    -- { "<leader>h_", hidden = true },
    { "<leader>r", group = "[R]ename" },
    -- { "<leader>r_", hidden = true },
    { "<leader>s", group = "[S]earch" },
    -- { "<leader>s_", hidden = true },
    { "<leader>t", group = "[T]oggle" },
    -- { "<leader>t_", hidden = true },
    { "<leader>w", group = "[W]orkspace" },
    -- { "<leader>w_", hidden = true },

    { "<leader>h", desc = "Git [H]unk", mode = "v" }, -- This is an actual keymap
    { "<leader>j", function() vim.cmd("term") end, desc = "Open Terminal", mode = "n" }, -- Using a function for clearer execution
    -- { "<leader>sr", function() require("telescope.builtin").oldfiles() end, desc = "Recent Files", mode = "n" },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
  end,
}
