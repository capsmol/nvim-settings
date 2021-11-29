local opt = vim.opt
local g = vim.global
local cmd = vim.cmd
-----------------------------------------------------------
-- Главные
-----------------------------------------------------------
opt.mouse = 'a'
opt.cursorline = true
opt.encoding = 'utf-8'
opt.number = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.termguicolors = true
opt.autoindent = true
opt.updatetime = 300
opt.hidden = true
vim.o.scrolloff = 7
vim.g['mapleader'] = ';'
vim.g['maplocalleader'] = ';'
vim.g['user_emmet_leader_key'] = ','

cmd('set noswapfile')
cmd('set expandtab')
cmd('set smarttab')
cmd('set cindent')
cmd('set nobackup') 
cmd('set nowritebackup') 
cmd('let NERDTreeShowHidden=1')

vim.g['tokyonight_style'] = 'storm'
vim.g['tokyonight_enable_italic'] = 1
vim.g['coc_global_extensions'] = 'coc-tsserver'
vim.g['closetag_filenames'] = '*.html,*.xhtml,*.phtml'
vim.g['closetag_filetypes'] = 'html,xhtml,phtml'
vim.g['closetag_xhtml_filetypes'] = 'xhtml,jsx'
vim.g['coc_global_extensions'] = {'coc-css', 'coc-json', 'coc-tsserver', 'coc-snippets'}
vim.g['airline#extensions#tabline#enabled'] = 1

cmd [[
  syntax enable
  colorscheme tokyonight
]]


cmd [[
	"autocmd VimEnter * NERDTree | wincmd p
	autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
]]

----------------------------------------------------------
--TREESITTER
----------------------------------------------------------
require'nvim-treesitter.configs'.setup {
	highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "json",
    "yaml",
    "html",
    "scss"
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }


----------------------------------------------------------
--LSP SAGA
----------------------------------------------------------
require('lspsaga').init_lsp_saga() 

----------------------------------------------------------
--LUA LINE
----------------------------------------------------------
local status, lualine = pcall(require, "lualine")
if (not status) then return end
lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'solarized_dark',
    section_separators = {'', ''},
    component_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {
      { 'diagnostics', sources = {"nvim_lsp"}, symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '} },
      'encoding',
      'filetype'
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {'fugitive'}
}
