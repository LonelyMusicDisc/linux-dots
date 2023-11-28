return {
   'EdenEast/nightfox.nvim',
   priority = 1000,
   event = "UIEnter",
   config = function ()
      vim.cmd.colorscheme("carbonfox")
   end
}
