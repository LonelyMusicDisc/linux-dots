return {
   'nvim-lualine/lualine.nvim',
   dependencies = {'nvim-tree/nvim-web-devicons'},
   event = 'UIEnter',
   config = function ()
      require('lualine').setup({
         options = {
            section_separators = { left = '', right = '' },
            component_separators = { left = '', right = '' }
         },
--         sections = {
--            lualine_x = {
--               {
--                  require("noice").api.status.command.get,
--                  cond = require("noice").api.status.command.has,
--               },
--               {
--                  require("noice").api.status.command.get,
--                  cond = require("noice").api.status.mode.has,
--               }
--            }
--         }
      })
   end
}
