return require('packer').startup(function(use)

use 'wbthomason/packer.nvim'

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
require('lualine').setup()

use 'neovim/nvim-lspconfig'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-vsnip'
use 'hrsh7th/vim-vsnip'
use 'nvim-treesitter/nvim-treesitter'
use 'voldikss/vim-floaterm'
use 'NLKNguyen/papercolor-theme'
use 'NLKNguyen/c-syntax.vim'
use 'liuchengxu/vim-which-key'
use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use {
  "startup-nvim/startup.nvim",
  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
  config = function()
    require"startup".setup({theme = "dashboard"})
  end
}

-- Setups
require'cmp'.setup {
  sources = {
    { name = 'nvim_lsp' }
  }
}
require("bufferline").setup{}


require("startup").setup({theme = "dashboard"}) -- put theme name here

end)
