return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- LSP
  use 'prabirshrestha/vim-lsp'
  use 'mattn/vim-lsp-settings'
  use 'prabirshrestha/asyncomplete.vim'
  use 'prabirshrestha/asyncomplete-lsp.vim'
end)
