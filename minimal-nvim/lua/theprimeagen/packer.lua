-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
--vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

     use {
     'nvim-telescope/telescope.nvim', tag = '0.1.0',
     -- or                            , branch = '0.1.x',
     requires = { {'nvim-lua/plenary.nvim'} }
     }
  use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
       --Project
     use { 'nvim-telescope/telescope-project.nvim' }
     require 'telescope'.load_extension('project')
  use({
      'rose-pine/neovim',
    as = 'rose-pine',
      config = function()
      vim.cmd('colorscheme rose-pine')
      end
    })
      use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
      use('nvim-treesitter/playground')
      use('theprimeagen/harpoon')
      use('mbbill/undotree')
      use('tpope/vim-fugitive')
  
    use {
     'VonHeikemen/lsp-zero.nvim',
    requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  --
  -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},
  --
    -- Snippets
   {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},
    }
   }
  --
  --   use("folke/zen-mode.nvim")
  -- --   use("github/copilot.vim")
  ---- my essentials
  --
use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }
  require 'hop'.setup()
  use 'ggandor/lightspeed.nvim' --term
  
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

end)
