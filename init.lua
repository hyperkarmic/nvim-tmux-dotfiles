require('colorbuddy').colorscheme('gruvbuddy')
--require 'lspconfig'.tsserver.setup {
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


require'hop'.setup()
-- LSP config
local lspconfig = require('lspconfig')
local servers = { 'bashls', 'sumneko_lua', 'solargraph', 'tsserver', 'vimls' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({})
end



--
-- Settings
---
require "user.keymaps"
require "user.telescope"
--require "user.toggleterm"
require "user.treesitter"
require "user.bufferline"
require "user.dap"
require "user.nvim-tree"
require "user.autopairs"
-- Tab set to two spaces
vim.g.do_filetype_lua =true 
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
vim.opt.softtabstop = 2
vim.opt.expandtab = true
-- numbers
vim.wo.number = true
vim.o.relativenumber = true
-- Give me space
vim.opt.signcolumn = 'yes'
vim.opt.colorcolumn = '80'
-- additional settings
vim.opt.backup = false                          -- creates a backup file
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.cmdheight = 1                           -- more space in the neovim command line for displaying messages
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
vim.opt.pumheight = 10                          -- pop up menu height
vim.opt.showtabline = 1                         -- always show tabs
vim.opt.smartcase = true                        -- smart case
vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.autoindent = true
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false                        -- creates a swapfile
vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true                         -- enable persistent undo
vim.opt.updatetime = 300                        -- faster completion (4000ms default)
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.cursorcolumn=true
vim.opt.laststatus = 3
vim.opt.showcmd = false
vim.opt.ruler = true
vim.opt.numberwidth = 4                         -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false                            -- display lines as one long line
--vim.opt.scrolloff = 8                           -- is one of my fav
vim.opt.sidescrolloff = 8
vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
vim.opt.fillchars.eob=" "
vim.opt.shortmess:append "c"
vim.opt.whichwrap:append("<,>,[,],h,l")
vim.opt.iskeyword:append("-")
vim.opt.colorcolumn = "80"
vim.opt.title = true
vim.opt.lazyredraw = true
vim.opt.listchars = { tab = ">>>", trail = "·", precedes = "←", extends = "→",eol = "↲", nbsp = "␣" }
vim.opt.list = true
--vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
--[[Theme]]
vim.opt.syntax = "ON"
vim.opt.termguicolors = true
vim.opt.fillchars = { eob = " " }
--vim.cmd[[colorscheme gruvbuddy]]
--Lua:


-- Plugins
---


require('packer').startup(function(use)
  -- packer can update itself
  use 'wbthomason/packer.nvim'
  --tan connect
  use "lukas-reineke/indent-blankline.nvim"
use {'kevinhwang91/nvim-hlslens'}
use 'ggandor/lightspeed.nvim'--term
  -- scrollbar
  use("petertriho/nvim-scrollbar")
  --auto-highlight
  --hop
use {
  'phaazon/hop.nvim',
  branch = 'v2', -- optional but strongly recommended
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
  end
}
  use 'wellle/targets.vim'
use 'mattn/emmet-vim'
  use 'maxmellon/vim-jsx-pretty'
 use "RRethy/vim-illuminate"
  use 'stevearc/dressing.nvim'
  --tan connect
use { 'kazhala/close-buffers.nvim' }
-- using packer.nvim
  -- 
use 'tjdevries/gruvbuddy.nvim'
  use 'nacro90/numb.nvim'
use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
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
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    })
  end
})
  --
--  us"ae 'm4xshen/autoclose.nvim'
use 'rinx/nvim-minimap'
use "svrana/neosolarized.nvim"
 use{
        'morhetz/gruvbox'
    }--bracket-close
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
use { 'p00f/nvim-ts-rainbow'}
use {
    's1n7ax/nvim-terminal',
    config = function()
        vim.o.hidden = true
        require('nvim-terminal').setup()
    end,
}
use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
use {'norcalli/nvim-colorizer.lua'}
  use "tjdevries/colorbuddy.nvim"
--  use "ironhouzi/starlite-nvim"
use 'rktjmp/lush.nvim'
use 'RishabhRD/gruvy'
  --use "bronson/vim-visual-star-search"
use "xiyaowong/nvim-transparent"

use {'tpope/vim-surround'}
--   colorscheme
  use 'windwp/nvim-ts-autotag'
--  require('gruvbuddy').setup({
--  })
use('MunifTanjim/prettier.nvim')
local prettier = require("prettier")

prettier.setup({
  bin = 'prettier', -- or `'prettierd'` (v0.22+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})
  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },
    
      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },

      -- statusline
      use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
},
      --comments
      use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
},

      --
      -- telescope
      use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
       
},
  use ({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
    }
  }
end)

--fzf -telescope
-- Setup colorscheme
vim.opt.termguicolors = true
vim.o.background = "dark"
pcall(vim.cmd, 'colorscheme grubbuddy')

-- LSP setup
local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.nvim_workspace()
lsp.setup()

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {

      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
--commenter
require('Comment').setup()
--colorizer
-- Attaches to every FileType mode
require 'colorizer'.setup()
--tree facility
require'FTerm'.setup({
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})
--autopairs
--line connection
require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
-- all the scrollbar stuff....
require("scrollbar").setup({
    show = true,
    show_in_active_only = false,
    set_highlights = true,
    folds = 1000, -- handle folds, set to number to disable folds if no. of lines in buffer exceeds this
    max_lines = false, -- disables if no. of lines in buffer exceeds this
    handle = {
        text = " ",
        color = nil,
        cterm = nil,
        highlight = "CursorColumn",
        hide_if_all_visible = true, -- Hides handle if all lines are visible
    },
    marks = {
        Search = {
            text = { "-", "=" },
            priority = 0,
            color = nil,
            cterm = nil,
            highlight = "Search",
        },
        Error = {
            text = { "-", "=" },
            priority = 1,
            color = nil,
            cterm = nil,
            highlight = "DiagnosticVirtualTextError",
        },
        Warn = {
            text = { "-", "=" },
            priority = 2,
            color = nil,
            cterm = nil,
            highlight = "DiagnosticVirtualTextWarn",
        },
        Info = {
            text = { "-", "=" },
            priority = 3,
            color = nil,
            cterm = nil,
            highlight = "DiagnosticVirtualTextInfo",
        },
        Hint = {
            text = { "-", "=" },
            priority = 4,
            color = nil,
            cterm = nil,
            highlight = "DiagnosticVirtualTextHint",
        },
        Misc = {
            text = { "-", "=" },
            priority = 5,
            color = nil,
            cterm = nil,
            highlight = "Normal",
        },
    },
    excluded_buftypes = {
        "terminal",
    },
    excluded_filetypes = {
        "prompt",
        "TelescopePrompt",
    },
    autocmd = {
        render = {
            "BufWinEnter",
            "TabEnter",
            "TermEnter",
            "WinEnter",
            "CmdwinLeave",
            "TextChanged",
            "VimResized",
            "WinScrolled",
        },
        clear = {
            "BufWinLeave",
            "TabLeave",
            "TermLeave",
            "WinLeave",
        },
    },
    handlers = {
        diagnostic = true,
        search = false, -- Requires hlslens to be loaded, will run require("scrollbar.handlers.search").setup() for you
    },
})
--hlslenos-i
require('hlslens').setup()
local kopts = {noremap = true, silent = true}

vim.api.nvim_set_keymap('n', 'n',
    [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]],
    kopts)
vim.api.nvim_set_keymap('n', 'N',
    [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]],
    kopts)
vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)

vim.api.nvim_set_keymap('n', '<Leader>l', ':noh<CR>', kopts)
--num set up
require('numb').setup{
  show_numbers = true, -- Enable 'number' for the window while peeking
  show_cursorline = true, -- Enable 'cursorline' for the window while peeking
  number_only = false, -- Peek only when the command is only a number instead of when it starts with a number
  centered_peeking = true, -- Peeked line will be centered relative to window
}
--dressing schizzle
require('dressing').setup({
  input = {
    -- Set to false to disable the vim.ui.input implementation
    enabled = true,

    -- Default prompt string
    default_prompt = "Input:",

    -- Can be 'left', 'right', or 'center'
    prompt_align = "left",

    -- When true, <Esc> will close the modal
    insert_only = true,

    -- When true, input will start in insert mode.
    start_in_insert = true,

    -- These are passed to nvim_open_win
    anchor = "SW",
    border = "rounded",
    -- 'editor' and 'win' will default to being centered
    relative = "cursor",

    -- These can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
    prefer_width = 40,
    width = nil,
    -- min_width and max_width can be a list of mixed types.
    -- min_width = {20, 0.2} means "the greater of 20 columns or 20% of total"
    max_width = { 140, 0.9 },
    min_width = { 20, 0.2 },

    -- Window transparency (0-100)
    winblend = 10,
    -- Change default highlight groups (see :help winhl)
    winhighlight = "",

    -- Set to `false` to disable
    mappings = {
      n = {
        ["<Esc>"] = "Close",
        ["<CR>"] = "Confirm",
      },
      i = {
        ["<C-c>"] = "Close",
        ["<CR>"] = "Confirm",
        ["<Up>"] = "HistoryPrev",
        ["<Down>"] = "HistoryNext",
      },
    },

    override = function(conf)
      -- This is the config that will be passed to nvim_open_win.
      -- Change values here to customize the layout
      return conf
    end,

    -- see :help dressing_get_config
    get_config = nil,
  },
  select = {
    -- Set to false to disable the vim.ui.select implementation
    enabled = true,

    -- Priority list of preferred vim.select implementations
    backend = { "telescope", "fzf_lua", "fzf", "builtin", "nui" },

    -- Trim trailing `:` from prompt
    trim_prompt = true,

    -- Options for telescope selector
    -- These are passed into the telescope picker directly. Can be used like:
    -- telescope = require('telescope.themes').get_ivy({...})
    telescope = nil,

    -- Options for fzf selector
    fzf = {
      window = {
        width = 0.5,
        height = 0.4,
      },
    },

    -- Options for fzf_lua selector
    fzf_lua = {
      winopts = {
        width = 0.5,
        height = 0.4,
      },
    },

    -- Options for nui Menu
    nui = {
      position = "50%",
      size = nil,
      relative = "editor",
      border = {
        style = "rounded",
      },
      buf_options = {
        swapfile = false,
        filetype = "DressingSelect",
      },
      win_options = {
        winblend = 10,
      },
      max_width = 80,
      max_height = 40,
      min_width = 40,
      min_height = 10,
    },

    -- Options for built-in selector
    builtin = {
      -- These are passed to nvim_open_win
      anchor = "NW",
      border = "rounded",
      -- 'editor' and 'win' will default to being centered
      relative = "editor",

      -- Window transparency (0-100)
      winblend = 10,
      -- Change default highlight groups (see :help winhl)
      winhighlight = "",

      -- These can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
      -- the min_ and max_ options can be a list of mixed types.
      -- max_width = {140, 0.8} means "the lesser of 140 columns or 80% of total"
      width = nil,
      max_width = { 140, 0.8 },
      min_width = { 40, 0.2 },
      height = nil,
      max_height = 0.9,
      min_height = { 10, 0.2 },

      -- Set to `false` to disable
      mappings = {
        ["<Esc>"] = "Close",
        ["<C-c>"] = "Close",
        ["<CR>"] = "Confirm",
      },

      override = function(conf)
        -- This is the config that will be passed to nvim_open_win.
        -- Change values here to customize the layout
        return conf
      end,
    },

    -- Used to override format_item. See :help dressing-format
    format_item_override = {},

    -- see :help dressing_get_config
    get_config = nil,
  },
})

