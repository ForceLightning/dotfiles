call plug#begin(stdpath('data') . '/plugged')
if has("g:vscode")
    Plug 'editorconfig/editorconfig-vim'
    Plug 'Yggdroot/indentLine'
    Plug 'easymotion/vim-easymotion'
    Plug 'lambdalisue/suda.vim'
    Plug 'airblade/vim-rooter'
else
    Plug 'terryma/vim-multiple-cursors'
    Plug 'airblade/vim-gitgutter'
    Plug 'itchyny/lightline.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'mattn/emmet-vim'
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-surround'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "Plug 'jeffkreeftmeijer/vim-numbertoggle'
    "Plug 'takac/vim-hardtime'
    Plug 'preservim/nerdcommenter'
    Plug 'arcticicestudio/nord-vim'
    Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }
    Plug 'w0rp/ale'
    Plug 'stevearc/conform.nvim'
    if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif
    Plug 'Shougo/neosnippet.vim'
    Plug 'Shougo/neosnippet-snippets'
    Plug 'pixelneo/vim-python-docstring'
    "Plug 'himkt/docstring.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'editorconfig/editorconfig-vim'
    "Plug 'Yggdroot/indentLine'
    Plug 'easymotion/vim-easymotion'
    Plug 'folke/tokyonight.nvim'
    Plug 'williamboman/mason.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

endif
Plug 'lambdalisue/suda.vim'
Plug 'airblade/vim-rooter'

call plug#end()
