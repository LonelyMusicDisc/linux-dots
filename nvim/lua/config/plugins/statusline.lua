return {
   {
      'nvim-lualine/lualine.nvim',
      dependencies = {'nvim-tree/nvim-web-devicons'},
      event = 'VeryLazy',
      config = function ()
         require('lualine').setup({
            options = {
               theme = "auto",
               section_separators = { left = '', right = '' },
               component_separators = { left = '', right = '' },
            },
         })

         vim.api.nvim_create_user_command('StatuslineColors',
         function (opts)
            require('lualine').setup({options = {theme = opts.fargs[1]}})
         end,
         {
            nargs = 1,
            complete = 'color'
         })
      end
   }
}
