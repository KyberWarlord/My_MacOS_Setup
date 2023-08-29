call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/deoplete.nvim'
Plug 'dense-analysis/ale'
Plug 'sbdchd/neoformat'
Plug 'python-mode/python-mode', { 'for': 'python' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()
set number
