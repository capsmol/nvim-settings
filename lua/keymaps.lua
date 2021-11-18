local map = vim.api.nvim_set_keymap
local default_options = { noremap = true, silent = true}

-- Типа 'Нажимает' на ESC при быстром нажатии jj, чтобы не тянутся
map('i', 'jj', '<Esc>', {noremap = true})
-- Стрелочки откл. Использовать hjkl
map('', '<up>', ':echoe "Use k"<CR>', {noremap = true, silent = false})
map('', '<down>', ':echoe "Use j"<CR>', {noremap = true, silent = false})
map('', '<left>', ':echoe "Use h"<CR>', {noremap = true, silent = false})
map('', '<right>', ':echoe "Use l"<CR>', {noremap = true, silent = false})
-- Сохранение как в vs code ctr + s
map('i', '<C-s>', '<esc>:w<CR>', default_options)
map('n', '<C-s>', ':w<CR>',  default_options)

-- NERDTree
map('n', '<C-n>', ':NERDTreeToggle<CR>', {noremap = true, silent = false})

