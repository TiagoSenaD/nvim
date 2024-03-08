  -- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  --colorscheme
  use 'rebelot/kanagawa.nvim'

  --Term
  use 'voldikss/vim-floaterm'

  --treesitter
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  --airline
  use 'vim-airline/vim-airline'

  --copilot
  use 'github/copilot.vim'

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
  }

end)
