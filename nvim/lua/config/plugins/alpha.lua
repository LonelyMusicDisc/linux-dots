local function setup()
  local alpha = require("alpha")
  local dashboard = require("alpha.themes.dashboard")
  
  -- Set header
  dashboard.section.header.val = {
      '█▄░█ █▀▀ █▀█ ▀█▀ █▀▀',
      '█░▀█ ██▄ █▄█ ░█░ ██▄',
  }
  
  -- Set menu
  dashboard.section.buttons.val = {
      dashboard.button( 'e', "  > New file" , ":ene <BAR> startinsert <CR>"),
      dashboard.button( 'f', "  > Find file", ":cd $HOME/Documents | Telescope find_files<CR>"),
      dashboard.button( 'r', "  > Find recent"   , ":Telescope oldfiles<CR>"),
      dashboard.button( 'p', "  > Open Project" , ":Telescope project<CR>"),
      dashboard.button( 's', "  > Settings" , ":e $MYVIMRC | :cd %:p:h | :bd | :Telescope file_browser<CR>"),
      dashboard.button( 'q', "󰠜  > Quit", ":qa<CR>"),
  }
  
  -- Send config to alpha
  alpha.setup(dashboard.opts)
  
  -- Disable folding on alpha buffer
  vim.cmd([[
      autocmd FileType alpha setlocal nofoldenable
  ]])
end
  
return {
  'goolord/alpha-nvim',
  event = 'BufWinEnter',
  cmd = 'Alpha',
  config = function ()
      setup()
    end
};
