return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup({
      options = {
        mode = "buffers", -- set to "tabs" to only show tabpages instead
        themable = false, -- allows highlight groups to be overriden i.e. sets highlights as default
        diagnostics = "nvim_lsp",
        numbers = "buffer_id",
        indicator = {
          icon = "▎", -- this should be omitted if indicator style is not 'icon'
          style = "icon",
        },
        buffer_close_icon = "󰅖",
        modified_icon = "● ",
        close_icon = " ",
        left_trunc_marker = " ",
        right_trunc_marker = " ",
      },
    })
  end,
}
