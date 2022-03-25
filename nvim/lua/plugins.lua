local cmd = vim.cmd
return require('packer').startup(function()
  use {'raghur/vim-ghost', run = ':GhostInstall'}
  use 'wbthomason/packer.nvim' --- Stops Packer from deleting itself during clean-up
  use 'tpope/vim-sensible'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'thehackercoding/onehalf-vim'
  use 'rhysd/git-messenger.vim'
  use 'randymorris/vim-bufstat'
  use 'ap/vim-buftabline'
  use 'rust-lang/rust.vim'
-- use 'preservim/nerdtree' --- NERDTree but cooler :)
  use {'ms-jpq/chadtree', branch = 'chad', run = 'python3 -m chadtree deps'}
  use 'wesQ3/vim-windowswap' --- Swap Buffers/Windows
  use 'jiangmiao/auto-pairs' --- Pair curly brackets, brackets, etc.
  use 'tpope/vim-obsession' --- Better Sessions
  use 'machakann/vim-highlightedyank' --- Highlight Yanks
  use 'wsdjeg/vim-todo' --- TODO in Vim
  use 'tpope/vim-fugitive' --- Vim + Git = <3
  use 'airblade/vim-gitgutter' --- Git diff in vim
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'sheerun/vim-polyglot' --- Syntax Highlighting + fixes a few issues with indent-blankline
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'} --- Advanced Syntax Highlighting
  use 'ryanoasis/vim-devicons'
  use 'dag/vim-fish'
  use 'euclio/vim-markdown-composer'
  use 'bfrg/vim-cpp-modern'
  use 'dyng/ctrlsf.vim'
  use 'pantharshit00/vim-prisma'
  use {'RRethy/vim-hexokinase', run = 'make hexokinase'}
  use {'mg979/vim-visual-multi', branch = 'master'}
  use 'dart-lang/dart-vim-plugin'
  use {'akinsho/flutter-tools.nvim', requires = {'nvim-lua/plenary.nvim'}, config = function() require("flutter-tools").setup({}) end }
  use 'udalov/kotlin-vim'
  use 'neovim/nvim-lspconfig'
  use {'simrat39/rust-tools.nvim', config = function() require('rust-tools').setup({}) end }
  use 'mfussenegger/nvim-dap'
end)
