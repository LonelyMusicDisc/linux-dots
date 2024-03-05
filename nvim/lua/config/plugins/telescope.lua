return {
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.5",
    dependencies = {"nvim-lua/plenary.nvim"},
    lazy = false,
    keys = {
       {"<M-x>", "<cmd>Telescope commands<cr>", desc = "Commands", 'n'},
    },
    config = function ()

      require("telescope").setup({
         defaults = {
            preview = {
               ls_short = true,
            }
         },
         extensions = {
            file_browser = {
               preview = {
                  ls_short = true,
               }
            }
         }
      })

      local extensions  = {"fzf", "file_browser", "project", "undo"}
      for _, ext in ipairs(extensions) do
         require("telescope").load_extension(ext)
      end
    end,
   },
   {"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
   {"nvim-telescope/telescope-file-browser.nvim"},
   {"nvim-telescope/telescope-project.nvim"},
   {"debugloop/telescope-undo.nvim"},
}
