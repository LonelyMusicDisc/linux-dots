local map = vim.keymap.set

return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = {'nvim-lua/plenary.nvim'},
    event = 'UIEnter',
    config = function ()
      local builtin = require('telescope.builtin')

      map('n', '<M-x>', builtin.commands, {})

      local extensions = {'fzf', 'file_browser', 'project', 'undo', 'noice'}
      for _, ext in ipairs(extensions) do
         require('telescope').load_extension(ext)
      end
    end
   },
   {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
   {'nvim-telescope/telescope-file-browser.nvim', cmd = "Telescope file_browser"},
   {'nvim-telescope/telescope-project.nvim', cmd = "Telescope project"},
   {'debugloop/telescope-undo.nvim', cmd = "Telescope undo"},
}
