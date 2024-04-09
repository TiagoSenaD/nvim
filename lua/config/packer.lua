  -- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  --colorscheme
  use 'rebelot/kanagawa.nvim'

  --copilot
  use 'github/copilot.vim'

  --treesitter
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  --[[ Term
  use 'voldikss/vim-floaterm'


  --airline
  use 'vim-airline/vim-airline'


  --LSP
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {

          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }]]

end)
