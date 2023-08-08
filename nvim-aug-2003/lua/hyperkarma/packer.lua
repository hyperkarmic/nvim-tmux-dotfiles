-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
--vim.cmd.packadd('packer.nvim')
----loss

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
use 'ryanoasis/vim-devicons'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
  --Project
  use { 'nvim-telescope/telescope-project.nvim' }
  require 'telescope'.load_extension('project')
   -- use({
   --   'rose-pine/neovim',
   --   as = 'rose-pine',
   --     config = function()
   --     vim.cmd('colorscheme rose-pine')
   --     end
   --   })
  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use { 'p00f/nvim-ts-rainbow' }
  use "stevearc/aerial.nvim"
  -- Call the setup function to change the default behavior
  use('theprimeagen/harpoon')
  require("telescope").load_extension('harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use 'nvim-tree/nvim-web-devicons'
  --
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      --  --
      --  -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },
      --  --
      --    -- Snippets
      { 'L3MON4D3/LuaSnip' },
      --
      { 'rafamadriz/friendly-snippets' },
    }
  }
  --  --
  require('luasnip').filetype_extend("javascript", { "javascriptreact" })
  require('luasnip').filetype_extend("javascript", { "html" })
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }
  --  require 'hop'.setup()
  use 'ggandor/lightspeed.nvim' --term
  --use "ggandor/leap.nvim"
  --  require('leap').add_default_mappings()
  -- use "unblevable/quick-scope"
  use "jinh0/eyeliner.nvim"
--eyeliner gives us the jump to word highlighting!!!!
  ----
  ----
  use "folke/tokyonight.nvim"
use 'rockerBOO/boo-colorscheme-nvim'
  --
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use({
    "gbprod/yanky.nvim",
    config = function()
      require("yanky").setup({
      })
    end
  })
  ----fterm
  use "numToStr/FTerm.nvim"
  ----
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use 'kevinhwang91/nvim-hlslens'
  use {
    "AckslD/nvim-neoclip.lua",
    requires = {
      { 'kkharji/sqlite.lua', module = 'sqlite' },
      -- you'll need at least one of these
      -- {'nvim-telescope/telescope.nvim'},
      -- {'ibhagwan/fzf-lua'},
    },
    config = function()
      require('neoclip').setup()
    end,
  }
  use { "ellisonleao/gruvbox.nvim" }
  use { "arturgoms/moonbow.nvim" }
  use "Th3Whit3Wolf/one-nvim"
  use 'navarasu/onedark.nvim'
  use 'bluz71/vim-nightfly-colors'
  use 'Mofiqul/dracula.nvim'
  use 'luisiacc/gruvbox-baby'
  use 'gbprod/nord.nvim'
  use "ray-x/aurora"
  use "mhartington/oceanic-next"
  use "sainnhe/gruvbox-material"
  use "Shatur/neovim-ayu"
  use "SmiteshP/nvim-gps"
  use "onsails/lspkind.nvim"
  -- use {
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
  use('MunifTanjim/prettier.nvim')
  require("prettier").setup()
  -- local null_ls = require("null-ls")
  use('jose-elias-alvarez/null-ls.nvim')
use { 'ThePrimeagen/vim-be-good' }
  use { 'tpope/vim-surround' }
  use 'wellle/targets.vim'
  use 'mhinz/vim-startify'
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use "sitiom/nvim-numbertoggle"
  use "preservim/tagbar"
  use 'simrat39/symbols-outline.nvim'
  require("symbols-outline").setup()
  use "norcalli/nvim-colorizer.lua"
  use "sainnhe/sonokai"
  use "lukas-reineke/indent-blankline.nvim"
  -- vim.opt.list = true
  -- vim.opt.listchars:append "space:⋅"
  -- vim.opt.listchars:append "eol:↴"

use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
} use "xiyaowong/nvim-transparent"
  use {
    'wthollingsworth/pomodoro.nvim',
    requires = 'MunifTanjim/nui.nvim',
    config = function()
      require('pomodoro').setup({
        time_work = 25,
        time_break_short = 5,
        time_break_long = 20,
        timers_to_long_break = 4
      })
    end
  } -- setup must be called before loading

  use "RRethy/vim-illuminate"
  use 'luochen1990/rainbow'
-- use {
--   'm-demare/hlargs.nvim',
--   requires = { 'nvim-treesitter/nvim-treesitter' }
-- }
-- require('hlargs').setup()
use {
  'Exafunction/codeium.vim',
  config = function ()
    -- Change '<C-g>' here to any keycode you like.
    vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
    vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
    vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
    vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
  end
}  -- use { "catppuccin/nvim", as = "catppuccin" }
  -- require("catppuccin").setup({
  --   flavour = "macchiato", -- latte, frappe, macchiato, mocha
  --   background = { -- :h background
  --     light = "latte",
  --     dark = "mocha",
  --   },
  --   transparent_background = true,
  --   show_end_of_buffer = false, -- show the '~' characters after the end of buffers
  --   term_colors = false,
  --   dim_inactive = {
  --     enabled = false,
  --     shade = "dark",
  --     percentage = 0.15,
  --   },
  --   no_italic = false, -- Force no italic
  --   no_bold = false, -- Force no bold
  --   styles = {
  --     comments = { "italic" },
  --     conditionals = { "italic" },
  --     loops = {},
  --     functions = {},
  --     keywords = {},
  --     strings = {},
  --     variables = {},
  --     numbers = {},
  --     booleans = {},
  --     properties = {},
  --     types = {},
  --     operators = {},
  --   },
  --   color_overrides = {},
  --   custom_highlights = {},
  --   integrations = {
  --     cmp = true,
  --     gitsigns = true,
  --     nvimtree = true,
  --     telescope = true,
  --     notify = false,
  --     mini = false,
  --     -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  --   },
  -- })

end)
