local formats = {'norg', 'markdown', 'md', 'org', 'rst', 'wiki'}

local settings = vim.api.nvim_create_augroup('note_taking_settings', { clear = true })

vim.api.nvim_create_autocmd('FileType', {
   pattern = formats,
   callback = function()
      vim.opt_local.textwidth = 100
      vim.opt_local.wrap = true
      vim.wo.foldenable = false
      vim.opt_local.spell = true
      vim.opt_local.dictionary = "/usr/share/dict/words"
   end,
   group = settings,
})

return formats
