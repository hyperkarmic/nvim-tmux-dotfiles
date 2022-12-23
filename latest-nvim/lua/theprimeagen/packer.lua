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
--  use({
--      'rose-pine/neovim',
--    as = 'rose-pine',
--      config = function()
--      vim.cmd('colorscheme rose-pine')
--      end
--    })
      use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
      use('nvim-treesitter/playground')
      use { 'p00f/nvim-ts-rainbow' }
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
require('luasnip').filetype_extend("javascript", { "javascriptreact" })
require('luasnip').filetype_extend("javascript", { "html" })
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
--yank!!!
 use({
    "gbprod/yanky.nvim",
    config = function()
      require("yanky").setup({
      })
    end
  })
--fterm
use "numToStr/FTerm.nvim"
--
 use {
        'numToStr/Comment.nvim',
        config = function()
          require('Comment').setup()
        end
      }
 use 'kevinhwang91/nvim-hlslens'
--use 'navarasu/onedark.nvim'
use "Th3Whit3Wolf/one-nvim"
--use 'navarasu/onedark.nvim'
 use "SmiteshP/nvim-gps"
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
 use('MunifTanjim/prettier.nvim')
 require("prettier").setup()
use('jose-elias-alvarez/null-ls.nvim')
local null_ls = require("null-ls")

local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
local event = "BufWritePre" -- or "BufWritePost"
local async = event == "BufWritePost"

null_ls.setup({
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.keymap.set("n", "<Leader>f", function()
        vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
      end, { buffer = bufnr, desc = "[lsp] format" })

      -- format on save
      vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
      vim.api.nvim_create_autocmd(event, {
        buffer = bufnr,
        group = group,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr, async = async })
        end,
        desc = "[lsp] format on save",
      })
    end

    if client.supports_method("textDocument/rangeFormatting") then
      vim.keymap.set("x", "<Leader>f", function()
        vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
      end, { buffer = bufnr, desc = "[lsp] format" })
    end
  end,
})

 use { 'tpope/vim-surround' }
use 'wellle/targets.vim'
use 'mhinz/vim-startify'
use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use {
    "sitiom/nvim-numbertoggle",
    config = function()
      require("numbertoggle").setup()
    end
  }
--use "preservim/tagbar"
use 'simrat39/symbols-outline.nvim'
require("symbols-outline").setup()
use "norcalli/nvim-colorizer.lua"
end)
