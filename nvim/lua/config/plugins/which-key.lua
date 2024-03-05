local function setup()
   local register = require('which-key').register
   register({require("config.keymap.leader"), prefix='<leader>'})
end

return {
  "folke/which-key.nvim",
  dependencies = "ms-jpq/coq.artifacts",
  event = "UIEnter",
  opts = {
    plugins = {
      spelling = {
        enabled = true,
        suggestions = 20,
      }
    }
  },
  cmd = function () setup() end
}
