local function setup()
   require("nvim-treesitter.configs").setup {
      ensure_installed = {"markdown", "markdown_inline", "latex", "norg", "vim", "lua", "vimdoc"},
   }
end

return {
   {
      'nvim-treesitter/nvim-treesitter',
      build = ":TSUpdate",
      config = function () setup() end
   },
   {
      'lukas-reineke/headlines.nvim',
      ft = {'markdown', 'org', 'norg'},
      config = function ()
         require("headlines").setup{
            markdown = {
               fat_headlines = false
            },
            org = {
               fat_headlines = false
            },
            norg = {
               fat_headlines = false
            }
         }
      end
   }
}
