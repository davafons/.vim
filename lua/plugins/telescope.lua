return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",

  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope-ui-select.nvim",
  },

  config = function()
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = { "node_modules", "^zig-cache/", ".git\\" },
      },
    })

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>tt", builtin.find_files, { desc = "Telescope files" })
    vim.keymap.set("n", "<leader>tg", builtin.live_grep, { desc = "Telescope grep" })

    vim.keymap.set("n", "<leader>th", builtin.help_tags, { desc = "Telescope help tags" })
    vim.keymap.set("n", "<leader>tc", builtin.colorscheme, { desc = "Telescope colorscheme" })
    vim.keymap.set("n", "<leader>tk", builtin.keymaps, { desc = "Telescope keymaps" })

    -- This is your opts table
    require("telescope").setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown({
            -- even more opts
          }),

          -- pseudo code / specification for writing custom displays, like the one
          -- for "codeactions"
          -- specific_opts = {
          --   [kind] = {
          --     make_indexed = function(items) -> indexed_items, width,
          --     make_displayer = function(widths) -> displayer
          --     make_display = function(displayer) -> function(e)
          --     make_ordinal = function(e) -> string
          --   },
          --   -- for example to disable the custom builtin "codeactions" display
          --      do the following
          --   codeactions = false,
          -- }
        },
      },
    })
    -- To get ui-select loaded and working with telescope, you need to call
    -- load_extension, somewhere after setup function:
    require("telescope").load_extension("ui-select")
  end,
}
