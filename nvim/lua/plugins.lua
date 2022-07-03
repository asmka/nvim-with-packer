return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- LSP
  use 'prabirshrestha/vim-lsp'
  use 'mattn/vim-lsp-settings'

  -- use 'lambdalisue/fern.vim'
  use({
    'asmka/fern.vim',
    branch = 'auto-resize-all'
  })

  -- Color
  use 'nvim-treesitter/nvim-treesitter'
  use 'folke/tokyonight.nvim'
  use 'itchyny/lightline.vim'
end)
