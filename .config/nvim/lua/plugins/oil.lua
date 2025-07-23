return {
  "stevearc/oil.nvim",
  dependencies = { "echasnovski/mini.icons" },
  lazy = false,
  opts = {
    columns = { "icon" },
    view_options = {
      show_hidden = true,
    },
    default_file_explorer = true,
  },
  keys = {
    {
      "-",
      "<CMD>Oil<CR>",
      desc = "Open parent directory",
      mode = "n",
    },
    {
      "<space>-",
      function() require("oil").toggle_float() end,
      desc = "Toggle float oil",
      mode = "n",
    },
  },
  config = function(_, opts)
    require("oil").setup(opts)
  end,
}
