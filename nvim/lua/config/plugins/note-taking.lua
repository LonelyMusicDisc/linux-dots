return {
   "nvim-neorg/neorg",
   lazy = false,
   build = ":Neorg sync-parsers",
   dependencies = { "nvim-lua/plenary.nvim" },
   config = function()
      require("neorg").setup {
         load = {
            ["core.defaults"] = {},
            ["core.dirman"] = {
            config = {
               workspaces = {
                  notes = "~/Documents/Notes",
               }
            }
         }
      }
   }
end
}
