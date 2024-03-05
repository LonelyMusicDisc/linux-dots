return {
   'ms-jpq/coq_nvim',
   event = { "BufReadPost", "BufNewFile" },
   branch = 'coq',
   config = function ()
      vim.g.coq_settings = {auto_start = 'shut-up'}
   end
}
