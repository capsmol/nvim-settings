local Plug = vim.fn['plug#']
vim.cmd('let g:ale_disable_lsp = 1')

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug ('preservim/nerdtree', {on = 'NERDTreeToggle'})
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'neovim/nvim-lspconfig'
Plug ('neoclide/coc.nvim', {branch = 'release'})
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-surround'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'editorconfig/editorconfig-vim'
Plug ('prettier/vim-prettier', { ['do'] = 'npm install' }) 
Plug 'dense-analysis/ale'
vim.call('plug#end')

