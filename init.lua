-----------------------------------------------------------
-- Импорт модулей lua
-----------------------------------------------------------
require('plugins')
require('settings') 
require('keymaps')

---------------------------------------------------------
-- Импорт vim модулей 
---------------------------------------------------------

vim.cmd('source ~/.config/nvim/vimSetting/settingsVim.vim')
vim.cmd('source ~/.config/nvim/vimSetting/tabline.rc.vim')
vim.cmd('source ~/.config/nvim/vimSetting/telescope.rc.vim')
