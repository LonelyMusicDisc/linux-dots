vim.o.guifont = "CaskaydiaCove Nerd Font:h12.0:#h-slight:#e-antialias"
vim.g.neovide_cursor_animation_length = 0.03
vim.g.neovide_padding_left = 25
vim.g.neovide_padding_right = 25

local map = vim.keymap.set

map('n', '<F10>', function ()
   if vim.g.neovide_padding_left > 250 then return end
   vim.g.neovide_padding_left = vim.g.neovide_padding_left + 5
   vim.g.neovide_padding_right = vim.g.neovide_padding_left
end)

map('n', '<S-F10>', function ()
   if vim.g.neovide_padding_left < 0 then return end
   vim.g.neovide_padding_left = vim.g.neovide_padding_left - 6
   vim.g.neovide_padding_right = vim.g.neovide_padding_left
end)

map({'n','v','i','c'}, '<S-Insert>', '<C-R>+')

map('n', '<F11>', function ()
   if vim.g.neovide_fullscreen ~= not vim.g.neovide_fullscreen then
      vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen
   end
end)
