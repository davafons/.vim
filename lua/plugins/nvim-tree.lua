return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-tree").setup()
    -- custom mappings
    vim.keymap.set("n", "<Leader>f", ":NvimTreeToggle<CR>")
    vim.keymap.set("n", "<Leader>v", ":NvimTreeFindFile<CR>")
  end,
}
