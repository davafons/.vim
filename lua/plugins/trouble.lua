return {
  "folke/trouble.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },

  config = function()
    require("trouble").setup({
      auto_close = true,
      auto_preview = true,
      auto_fold = true,
      use_lsp_diagnostic_signs = true,
      modes = {
        test = {
          mode = "diagnostics",
          auto_open = true,
        },
      },
    })

    vim.api.nvim_create_autocmd("QuickFixCmdPost", {
      callback = function()
        vim.cmd([[Trouble qflist open]])
      end,
    })

    local open_with_trouble = require("trouble.sources.telescope").open

    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        mappings = {
          i = { ["<c-t>"] = open_with_trouble },
          n = { ["<c-t>"] = open_with_trouble },
        },
      },
    })

    vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>")
    vim.keymap.set("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>")

    vim.keymap.set("n", "<leader>xq", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })
  end,
}
