return {
  "mfussenegger/nvim-jdtls",
  config = function()
    vim.cmd([[ nnoremap <Leader>co <Cmd>lua require'jdtls'.organize_imports()<CR> ]])
    vim.cmd([[ nnoremap <leader>ct <Cmd>lua require'jdtls'.test_class()<CR> ]])
    vim.cmd([[ nnoremap <leader>cn <Cmd>lua require'jdtls'.test_nearest_method()<CR> ]])
  end,
}
