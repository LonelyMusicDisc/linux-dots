local function setup()
   local wk = require('which-key')

   wk.register({
      f = {
         name = 'file',
         f = {"<cmd>Telescope find_files<cr>", "Find files"},
         r = {"<cmd>Telescope oldfiles<cr>", "Recent files"},
         b = {"<cmd>Telescope file_browser<cr>", "Browse files"},
         g = {"<cmd>Telescope live_grep<cr>", "Live grep files"},
      },
      b = {
         name = 'buffer',
         b = {"<cmd>Telescope buffers<cr>", "Browse buffers"},
         d = {"<cmd>bd<cr>", "Delete buffer"},
         k = {"<cmd>bd!<cr>", "Kill buffer"},
         -- navigation
         n = {"<cmd>bn<cr>", "Next buffer"},
         p = {"<cmd>bp<cr>", "Previous buffer"},
      },
      w = {"<C-W>", "+window"},
      h = {
         name = 'helper',
         c = {"<cmd>Telescope colorscheme<cr>", "Select colorscheme"},
         t = {"<cmd>Telescope help_tags<cr>", "Tags"},
      },
      p = {
         name = 'project',
         p = {"<cmd>Telescope project<cr>", "Projects"},
      },
   }, {prefix='<leader>'})
end

return {
  "folke/which-key.nvim",
  event = "UIEnter",
  opts = {
    plugins = {
      spelling = {
        enabled = true,
        suggestions = 20,
      }
    }
  },
  cmd = function () setup() end
}
