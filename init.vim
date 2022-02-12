" 基本配置
lua require('basic')
" 映射配置
lua require('keymaps')
" Packer 插件管理
lua require('plugins')
" 插件配置
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
lua require('plugin-config/nvim-web-devicons')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/lualine')
lua require('plugin-config/toggleterm')
" lsp配置
" lua require('lsp/setup')
 " lsp completions
lua require('lsp/nvim-cmp')
 " language server 
lua require('lsp/haskell')

" 主题设置
set background=dark
" colorscheme gruvbox
" colorscheme dracula 
" colorscheme nord
colorscheme zephyr



set showmatch               " show matching 
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   "allow auto-indenting depending on file type
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set ttyfast                 " Speed up scrolling in Vim

