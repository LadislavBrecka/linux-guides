:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'nvim-tree/nvim-tree.lua'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'https://github.com/nvim-lualine/lualine.nvim'
Plug 'https://github.com/folke/lsp-colors.nvim'
Plug 'https://github.com/folke/trouble.nvim'

" Need to install DejaVuSansMono and set it as font for terminal
Plug 'https://github.com/nvim-tree/nvim-web-devicons'
set encoding=UTF-8

" LSP ----------------------------------------------
Plug 'https://github.com/williamboman/mason.nvim'
Plug 'https://github.com/williamboman/mason-lspconfig.nvim'
Plug 'https://github.com/neovim/nvim-lspconfig/'

Plug 'https://github.com/hrsh7th/cmp-nvim-lsp'
Plug 'https://github.com/hrsh7th/cmp-buffer'
Plug 'https://github.com/hrsh7th/cmp-path'
Plug 'https://github.com/hrsh7th/cmp-cmdline'
Plug 'https://github.com/hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'https://github.com/hrsh7th/cmp-vsnip'
Plug 'https://github.com/hrsh7th/vim-vsnip'

" For luasnip users.
" Plug 'L3MON4D3/LuaSnip'
" Plug 'saadparwaiz1/cmp_luasnip'

" For ultisnips users.
" Plug 'SirVer/ultisnips'
" Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" For snippy users.
" Plug 'dcampos/nvim-snippy'
" Plug 'dcampos/cmp-snippy'
" LSP -----------------------------------------------

call plug#end()

" -- Theme Configuration ----------------------------
:colorscheme jellybeans

" -- Icons and colors Configuration ----------------
set termguicolors
lua require('lsp-colors-conf')
lua require('web-icons-conf')

" -- LSP Configuration ------------------------------
set completeopt=menu,menuone,noselect
lua require('lsp-conf')

" -- File Manager Configuration ---------------------
lua require('nvim-tree-conf')
nnoremap <C-f> :NvimTreeToggle %<CR>

" -- Statusbar Configuration -------------------------
lua require('lualine-conf')

" -- TreeSitter Configuration ------------------------
lua require('tree-sitter-conf')

" -- Trouble Configuration ---------------------------
lua require('trouble-conf')
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>