return {
   {
      "folke/zen-mode.nvim",
      event = "BufEnter",
      opts = {
         window = {
            backdrop = 1.0,
            width = .70,
            height = 1,
         },
      }
   },
   {
      "bullets-vim/bullets.vim",
      event = "BufEnter",
   },
   {
      'nvim-orgmode/orgmode',
      dependencies = {
         { 'nvim-treesitter/nvim-treesitter', lazy = true },
      },
      event = 'VeryLazy',
      config = function()
         -- Load treesitter grammar for org
         require('orgmode').setup_ts_grammar()
 
         -- Setup treesitter
         require('nvim-treesitter.configs').setup({
           highlight = {
            enable = true,
            additional_vim_regex_highlighting = { 'org' },
          },
          ensure_installed = { 'org' },
        })
 
        -- Setup orgmode
         require('orgmode').setup({
            org_agenda_files = '~/Documents/org/**/*',
            org_default_notes_file = '~/Documents/org/refile.org',
         })
      end,
   },
   {
      "nvim-neorg/neorg",
      lazy = false,
      build = ":Neorg sync-parsers",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function()
         require("neorg").setup({
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
         })
      end
   }
}
