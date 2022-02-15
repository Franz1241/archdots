call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'sheerun/vim-polyglot' " Better Syntax Support
    Plug 'jiangmiao/auto-pairs' " Auto pairs for '(' '[' '{'
    Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
    Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
    Plug 'https://github.com/preservim/nerdtree' " NerdTree
    Plug 'https://github.com/vim-airline/vim-airline' " Status bar 
    Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
    Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
    Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
    Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
    Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors and 'C' for replacing
    Plug 'https://github.com/neovim/nvim-lspconfig' " LSP general confgiguration
    Plug 'hrsh7th/nvim-compe' "PLug for the autocompletion ft

    
call plug#end()
 


nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>


:colorscheme molokai
