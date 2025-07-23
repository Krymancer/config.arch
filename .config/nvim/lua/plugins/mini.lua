return {
  "echasnovski/mini.nvim",
  config = function()
    require("mini.ai").setup({ n_lines = 500 })
    require("mini.pairs").setup()
    require("mini.surround").setup()
    require("mini.comment").setup()
    require("mini.align").setup()
    require("mini.diff").setup()
    require("mini.git").setup()
    require("mini.tabline").setup()
    require("mini.icons").setup()
    require("mini.notify").setup()
    -- require("mini.files").setup()
    -- require("mini.animate").setup()

    local statusline = require("mini.statusline")
    statusline.setup({ use_icons = vim.g.have_nerd_font })
    statusline.section_location = function()
      return "%2l:%-2v"
    end
  end,
}
