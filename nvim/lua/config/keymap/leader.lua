return {
   ['<leader>'] = {"<cmd>Telescope find_files<CR>", "Find Files"},

   f = {
      name = 'file',
      f = {"<cmd>Telescope file_browser<cr>", "Browse files"},
      r = {"<cmd>Telescope oldfiles<cr>", "Recent files"},
      g = {"<cmd>Telescope live_grep<cr>", "Live grep files"},
      p = {":e $MYVIMRC | :cd %:p:h | :bd | :Telescope file_browser<CR>", "Browse private configuration."},
      s = {"<cmd>write<cr>", "Save file"},
   },

   b = {
      name = 'buffer',
      b = {"<cmd>Telescope buffers<cr>", "Browse buffers"},
      C = {
         function ()
            require('centerpad').toggle{leftpad = 20, rightpad = 20}
         end, "Center buffer"},
      d = {"<cmd>bd<cr>", "Delete buffer"},
      k = {"<cmd>bd!<cr>", "Kill buffer"},
      --nav
      n = {"<cmd>bn<cr>", "Next buffer"},
      [']'] = {"<cmd>bn<cr>", "Next buffer"},
      p = {"<cmd>bp<cr>", "Previous buffer"},
      ['['] = {"<cmd>bp<cr>", "Previous buffer"},
   },

   w = {"<cmd>WhichKey <C-W><cr>", "+window"},

   h = {
      name = 'helper',
      c = {"<cmd>Telescope colorscheme<cr>", "Select colorscheme"},
      t = {"<cmd>Telescope help_tags<cr>", "Tags"},
   },

   p = {
      name = 'project',
      p = {"<cmd>Telescope project<cr>", "Projects"},
   },

   t = {
      name = 'toggle',
      l = {"<cmd>set number!<CR>", "Line numbers"},
      L = {"<cmd>set relativenumber!<CR>", "Relative line numbers"},
      c = {"<cmd>lua require'centerpad'.toggle{ leftpad = 10, rightpad = 10 }<cr>", "Centered buffer"},
      z = {"<cmd>ZenMode<cr>", "Zen"},
   }
}

