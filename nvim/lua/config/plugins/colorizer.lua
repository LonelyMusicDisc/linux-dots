return {
   'norcalli/nvim-colorizer.lua',
   ft = {'clojure', 'html'},
   config = function ()
      require("colorizer").setup()
   end
}
