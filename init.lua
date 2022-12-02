--require('colorbuddy').colorscheme('gruvbuddy')
require 'lspconfig'.tsserver.setup {
  on_attach = function()
  end,
}

require 'lspconfig'.eslint.setup {
  on_attach = function()
  end,
}

require 'lspconfig'.cssls.setup {
  on_attach = function()
  end,
}
require 'lspconfig'.html.setup {
  on_attach = function()
  end,
}
require('luasnip').filetype_extend("javascript", { "html" })

require 'hop'.setup()
-- LSP config
local lspconfig = require('lspconfig')
local servers = { 'bashls', 'sumneko_lua', 'solargraph', 'tsserver', 'vimls' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({})
end
-- Settings
require "user.keymaps"
require "user.lspsaga"
require "user.telescope"
require "user.treesitter"
require "user.bufferline"
require "user.dap"
require "user.nvim-tree"
require "user.autopairs"
require "user.lualine"
require "user.opts"
require "user.hlslens"
require "user.prettier"
require "user.lsp-setup"
require "user.dressing"
require "user.numb"
require "user.scrollbar"
require "user.colorizer"
require "user.blankline"

--this works - we ought to modulize!!!!
vim.cmd('abb arr ()=>{}')
vim.cmd('abb rqr (req,res)=>{}')


--the plugins start here
require('packer').startup(function(use)
  -- packer can update itself
  use 'wbthomason/packer.nvim'
  --tan connect
  use "lukas-reineke/indent-blankline.nvim"
use 'mhinz/vim-startify'
  use 'kevinhwang91/nvim-hlslens'
  use 'ggandor/lightspeed.nvim' --term
  --hop
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }
use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
        local saga = require("lspsaga")
        saga.init_lsp_saga({
            -- your configuration
        })
    end,
})
  use 'wellle/targets.vim'
  use 'https://github.com/adelarsq/vim-matchit'

  use 'mattn/emmet-vim'
  use 'maxmellon/vim-jsx-pretty'
  use "RRethy/vim-illuminate"
   use 'stevearc/dressing.nvim'
  --tan connect
  use { 'kazhala/close-buffers.nvim' }
  -- using packer.nvim
  use 'tjdevries/gruvbuddy.nvim'
  use 'nacro90/numb.nvim'
  -- Lua
  use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }
  --
  use {
    "sitiom/nvim-numbertoggle",
    config = function()
      require("numbertoggle").setup()
    end
  }
  use({
    "gbprod/yanky.nvim",
    config = function()
      require("yanky").setup({
      })
    end
  })
  --  us"ae 'm4xshen/autoclose.nvim'
  use 'rinx/nvim-minimap'
  use "svrana/neosolarized.nvim"
  use {
    'morhetz/gruvbox'
  } --bracket-close
  use "numToStr/FTerm.nvim"
  --autopairs
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  --some stuff
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use { 'p00f/nvim-ts-rainbow' }
use "SmiteshP/nvim-gps"
-- Default config
require("nvim-gps").setup()
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use { 'norcalli/nvim-colorizer.lua' }
  use "Th3Whit3Wolf/one-nvim"
 use "tjdevries/colorbuddy.nvim"
    use "ironhouzi/starlite-nvim"
  use 'rktjmp/lush.nvim'
  use 'RishabhRD/gruvy'
  use "bronson/vim-visual-star-search"
  use "xiyaowong/nvim-transparent"
  use { 'tpope/vim-surround' }
  --   colorscheme
  use 'windwp/nvim-ts-autotag'

  use('MunifTanjim/prettier.nvim')
  --LSP
      --comments
use "jose-elias-alvarez/null-ls.nvim"
      use {
        'numToStr/Comment.nvim',
        config = function()
          require('Comment').setup()
        end
      }

      -- telescope
      use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
      }
      use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
 --Project
use { 'nvim-telescope/telescope-project.nvim' }
  require'telescope'.load_extension('project')





end)

