-- vim.cmd([[set wildignore+=blue.vim,darkblue.vim,default.vim,delek.vim,desert.vim,
--      \elflord.vim,evening.vim,industry.vim,koehler.vim,morning.vim,murphy.vim,
--      \pablo.vim,peachpuff.vim,ron.vim,shine.vim,slate.vim,torte.vim,zellner.vim,
--      \quiet.vim,lunaperche.vim,habamax.vim,]])

vim.opt.wildignore = [[blue.vim,darkblue.vim,default.vim,delek.vim,desert.vim,elflord.vim,evening.vim,industry.vim,koehler.vim,morning.vim,murphy.vim,pablo.vim,peachpuff.vim,ron.vim,shine.vim,slate.vim,torte.vim,zellner.vim,quiet.vim,lunaperche.vim,habamax.vim,]]

vim.opt.termguicolors = true

return {
   {
      'catppuccin/nvim',
      name = 'catppuchin',
      priority = 1000,
      event = 'UIEnter',
      config = function ()
         require("catppuccin").setup({
            intergrations = {
               treesitter = true,
               markdown = true,
               headlines = true,
            }
         })
      end
   },
   {
      'navarasu/onedark.nvim',
      priority = 1000,
      event = 'UIEnter',
      config = function ()
         vim.cmd.colorscheme('onedark')
         require('onedark').setup({
            style = 'dark'
         })
      end
   },
   {
      'shaunsingh/nord.nvim',
      priority = 1000,
      event = 'UIEnter',
   },
   {
      'sainnhe/gruvbox-material',
      priority = 1000,
      event = 'UIEnter',
   },
}
