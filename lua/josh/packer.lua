vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
use 'wbthomason/packer.nvim'


use {
	'nvim-treesitter/nvim-treesitter',
	run = ':TSUpdate'
}
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use ('theprimeagen/harpoon')
use ("tpope/vim-fugitive")
use {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim", -- Recommended for integration with nvim-lspconfig
	"neovim/nvim-lspconfig",             -- Required for LSP functionality
}
use ('echasnovski/mini.nvim')

use {
  "folke/tokyonight.nvim",
}
use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
}








end)
