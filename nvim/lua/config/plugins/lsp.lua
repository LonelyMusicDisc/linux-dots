return {
   "neovim/nvim-lspconfig",
   event = { "BufReadPost", "BufNewFile" },
   cmd = { "LspInfo", "LspInstall", "LspUninstall" },
   config = function ()
      local conf = require("lspconfig")

--      conf.marksman.setup{}
   
      -- Use LspAttach autocommand to only map the following keys
      -- after the language server attaches to the current buffer
      vim.api.nvim_create_autocmd('LspAttach', {
         group = vim.api.nvim_create_augroup('UserLspConfig', {}),
         callback = function(ev)
           -- Enable completion triggered by <c-x><c-o>
           vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
      
           -- Buffer local mappings.
           -- See `:help vim.lsp.*` for documentation on any of the below functions
           local opts = { buffer = ev.buf }
           local map = vim.keymap.set
      
           map('n', 'gD', vim.lsp.buf.declaration, opts)
           map('n', 'gd', vim.lsp.buf.definition, opts)
           map('n', 'K', vim.lsp.buf.hover, opts)
           map('n', 'gi', vim.lsp.buf.implementation, opts)
           map('n', 'gr', vim.lsp.buf.references, opts)
         end,
      })
   
   end
}

