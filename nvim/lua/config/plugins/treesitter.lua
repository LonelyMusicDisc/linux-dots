local function setup()
   require("nvim-treesitter.configs").setup {
      ensure_installed = {"markdown", "markdown_inline", "norg", "vim", "lua", "vimdoc", "tsx"},
   }
   vim.opt.foldmethod = 'expr'
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
               fat_headlines = true,
               codeblock_highlight = "CodeBlock",
               dash_highlight = "Dash",
               quote_highlight = "Quote",
            }
         }
      end
   },
}
