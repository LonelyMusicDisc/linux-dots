vim.loader.enable()

if vim.g.started_by_firenvim == true then
   vim.cmd.colorscheme("default")
end

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath) 

require("config.core")
require("config.gui")

require("lazy").setup("config.plugins", {
  defaults = {
    lazy = true,
  },
  lockfile = vim.fn.stdpath("config") .. "/lua/config/lazy-lock.json",
  performance = {
    rtp = {
      reset = false,
    },
  }
})

