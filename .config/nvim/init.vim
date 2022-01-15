:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4

call plug#begin()

Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/ray-x/aurora'      " for Plug user
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'mattn/emmet-vim' " emmet
Plug 'preservim/nerdcommenter' " comment multiple lines at a time

call plug#end()

filetype plugin on
set encoding=utf-8

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

set termguicolors            " 24 bit color
colorscheme aurora
