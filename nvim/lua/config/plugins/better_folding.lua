return {
   "kevinhwang91/nvim-ufo",
   event = "BufRead",
   dependencies = {"kevinhwang91/promise-async"},
   config = function()
      vim.o.foldcolumn = "0"
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true
      vim.cmd([[
      hi Folded guifg=NONE guibg=NONE
      ]])
      
      require("ufo").setup({
         open_fold_hl_timeout = 100,
         provider_selector = function(bufnr, filetype, buftype)
            return {'treesitter', 'indent'}
         end
      })
   end,
}
