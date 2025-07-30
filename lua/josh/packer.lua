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
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",  -- use the latest stable version
  requires = {
    "nvim-lua/plenary.nvim",         -- Required
    "nvim-tree/nvim-web-devicons",   -- Optional but recommended
    "MunifTanjim/nui.nvim",          -- Required
  },
  config = function()
    require("neo-tree").setup({
      window = {
        width = 30,
        mappings = {
          ["<space>"] = "none",  -- disable default space binding
        },
      },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
        },
      },
    })

    -- Keybinding to toggle Neo-tree
    vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
  end
}

use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
}








end)
