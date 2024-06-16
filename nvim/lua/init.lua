--require("lazy").setup({
--"terryma/vim-multiple-cursors",
--"airblade/vim-gitgutter",
--"itchyny/lightline.vim",
--{ "junegunn/fzf", build = -> fzf#install() },
--"junegunn/fzf.vim",
--"mattn/emmet-vim",
--"scrooloose/nerdtree",
--"tpope/vim-eunuch",
--"tpope/vim-surround",
--{ "neoclide/coc.nvim", branch = "release" },
--"preservim/nerdcommenter",
--"articicestudio/nord-vim",
--{ "pappasm/coc-jedi", build = "yarn install --frozen-lockfile && yarn build" },
--"w0rp/ale",
--"stevearc/conform.nvim",
--{ "Shougo/deoplete.nvim", build = ":UpdateRemotePlugins" },
--"roxma/nvim-yarp",
--"roxma/vim-hug-neovim-rpc",
--"Shougo/neosnippet.vim",
--"Shougo/neosnippet-snippets",
--"pixelneo/vim-python-docstring",
--"editorconfig/editorconfig-vim",
--"easymotion/vim-easymotion",
--"folke/tokyonight.nvim",
--{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }
--"lambdalisue/suda.vim",
--"airblade/vim-rooter"
--})

require('lazy_init')

-- [[ Setting options ]]

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'


-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic Keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
