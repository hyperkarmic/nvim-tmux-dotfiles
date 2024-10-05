local lazy = {}







if vim.g.vscode then

    vim.cmd[[source $HOME/.config/nvim/vscode/settings.vim]]
-- Optional plugin
--
    vim.cmd[[source $HOME/.config/nvim/vscode/easymotion-config.vim]]

end
function lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print('Installing lazy.nvim....')
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      path,
    })
  end
end
function lazy.setup(plugins)
  -- You can "comment out" the line below after lazy.nvim is installed
   lazy.install(lazy.path)
  vim.opt.rtp:prepend(lazy.path)
  require('lazy').setup(plugins, lazy.opts)
end
lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}

lazy.setup({
 {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  },
{'numToStr/FTerm.nvim'},
{'nvim-lua/popup.nvim'},
{"kkharji/sqlite.lua"}, 
{'unblevable/quick-scope'},
 {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },
  
  {'kevinhwang91/nvim-hlslens'},
  
  {'navarasu/onedark.nvim'},
  {'folke/tokyonight.nvim'},
  {'luisiacc/gruvbox-baby'},

{"sainnhe/gruvbox-material"},
  {'nvim-lualine/lualine.nvim'},
  {'nvim-tree/nvim-web-devicons'},
  
  --{'prichrd/nnnnnnw.nvim'},
  {'karb94/neoscroll.nvim'},
  { "lukas-reineke/indent-blankline.nvim" },
  {'tpope/vim-repeat'},
  {'nvim-lua/plenary.nvim'},
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
{
  "nvim-telescope/telescope-frecency.nvim",
  config = function()
    require("telescope").load_extension "frecency"
  end,
  dependencies = { "kkharji/sqlite.lua" },
},
{'edluffy/hologram.nvim'},
{"tpope/vim-surround"},
{'moll/vim-bbye'},
  {'wellle/targets.vim'},
  {'ggandor/leap.nvim'},
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  {'HiPhish/nvim-ts-rainbow2'},
  {'nvim-treesitter/nvim-treesitter-textobjects'},
  {'onsails/lspkind.nvim'},
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'VonHeikemen/lsp-zero.nvim'},
  {'neovim/nvim-lspconfig'},
  { 'jose-elias-alvarez/null-ls.nvim'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'hrsh7th/cmp-buffer'},
  {'hrsh7th/cmp-path'},
  {'L3MON4D3/LuaSnip'},
  {'saadparwaiz1/cmp_luasnip'},
  {'ThePrimeagen/harpoon'},
  {'rafamadriz/friendly-snippets'},
  {'kosayoda/nvim-lightbulb'},
  {'stevearc/dressing.nvim'},
  {'machakann/vim-highlightedyank'},
  {'ggandor/flit.nvim'},
  {'simrat39/symbols-outline.nvim'},
  {'mrquantumcodes/retrospect.nvim'},
   {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
},
{
  "utilyre/barbecue.nvim",
  event = "VeryLazy",
  dependencies = {
    "neovim/nvim-lspconfig",
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons",
  },
  config = true,
},
{
  "AckslD/nvim-neoclip.lua",
  requires = {
    -- you'll need at least one of these
    {'nvim-telescope/telescope.nvim'},
    -- {'ibhagwan/fzf-lua'},
  },
  config = function()
    require('neoclip').setup()
  end,
},
{"nvim-telescope/telescope-project.nvim"},
{ "RRethy/vim-illuminate"},
{"HiPhish/rainbow-delimiters.nvim"},
 {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
},
{"p00f/nvim-ts-rainbow"},
{'MunifTanjim/prettier.nvim'},
{'MunifTanjim/eslint.nvim'},
  {'NvChad/nvim-colorizer.lua'},
{"AndrewRadev/tagalong.vim"},

{
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
},
-- {"jose-elias-alvarez/typescript.nvim"}
  
})
--local Config = require(todo-comments.config)
--additional snippets
require("luasnip/loaders/from_vscode").lazy_load()
require('luasnip').filetype_extend("javascript", { "javascriptreact" })
  require('luasnip').filetype_extend("javascript", { "html" })

--user settings files
require("symbols-outline").setup()
require("user.leap")
require("nvim-tree").setup()

-- setup
require('mason').setup()
require('mason-lspconfig').setup()
require('nvim-web-devicons').setup()
require('lualine').setup()
require('onedark').setup {
    style = 'cool'
}
 require("prettier").setup()
require('onedark').load()
require('neoscroll').setup()
require('hologram').setup{
    auto_display = true -- WIP automatic markdown image display, may be prone to breaking
}

-- more configured 
require("nvim-lightbulb").setup({
  autocmd = { enabled = true }
})
require("colorizer").setup()
require('nvim-treesitter.configs').setup({
 
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  },
 rainbow = {
    enable = true,
    -- list of languages you want to disable the plugin for
    -- disable = { "jsx", "cpp" },
    -- Which query to use for finding delimiters
    query = 'rainbow-parens',
    -- Highlight the entire buffer all at once
    strategy = require 'ts-rainbow.strategy.global',
    -- Do not enable for files with more than n lines
    max_file_lines = 3000
  }
})
TS = require('nvim-treesitter.install')
TS.prefer_git = false
TS.compilers = { "gcc", "make" }

-- theme
vim.opt.termguicolors = true
vim.cmd.colorscheme('onedark')
vim.cmd [[highlight IndentBlanklineContextChar guifg=#C678DD gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextStart guisp=#C678DD gui=underline]]

local actions = require "telescope.actions"

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      }
    },
  }
}
require'telescope'.load_extension('project')
require("ibl").setup()
--
--hls lens stuff
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

vim.api.nvim_set_keymap('n', '<Leader>l', '<Cmd>noh<CR>', kopts)



--
require('flit').setup {
  keys = { f = 'f', F = 'F', t = 't', T = 'T' },
  -- A string like "nv", "nvo", "o", etc.
  labeled_modes = "v",
  multiline = true,
  -- Like `leap`s similar argument (call-specific overrides).
  -- E.g.: opts = { equivalence_classes = {} }
  opts = {}
}
--f
require('nvim-treesitter.configs').setup {
  rainbow = {
    enable = true,
    -- list of languages you want to disable the plugin for
    -- disable = { 'jsx', 'cpp' },
    -- Which query to use for finding delimiters
    query = 'rainbow-parens',
    -- Highlight the entire buffer all at once
    strategy = require('ts-rainbow').strategy.global,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
        ['as'] = '@block.outer',
        ['is'] = '@block.inner',
        ['aa'] = '@parameter.outer',
        ['ia'] = '@parameter.inner',
      }
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        [']f'] = '@function.outer',
        [']c'] = '@class.outer',
      },
      goto_next_end = {
        [']F'] = '@function.outer',
        [']C'] = '@class.outer',
      },
      goto_previous_start = {
        ['[f'] = '@function.outer',
        ['[c'] = '@class.outer',
      },
      goto_previous_end = {
        ['[F'] = '@function.outer',
        ['[C'] = '@class.outer',
      },
    },
  },
}


local retrospect = require('retrospect')
retrospect.setup({
  saveKey = "<leader>\\", -- The shortcut to save the session, default is leader+backslash(\)
  loadKey = "<leader>//", -- The shortcut to load the session
  style = "default" -- or "modern", if you have nui.nvim and dressing.nvim
})

-- lsp stuff

-- lsp stuff

--lsp-zero
local lsp = require("lsp-zero")
local lsp = require('lsp-zero').preset({manage_nvim_cmp = false})
lsp.preset("recommended")

 -- lsp.ensure_installed({
 --   'tsserver',
 --   'eslint',
 --   'lua_ls',
 --   'rust_analyzer',
 --   'html',
 -- })

local servers = {
    'tsserver',
    'eslint',
    'lua_ls',
    'rust_analyzer',
    'html',
}


-- Fix Undefined global 'vim'
lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})
--

-- Import the mason module
local mason = require('mason')

-- custom colors (observe format)
vim.api.nvim_exec([[
  highlight MyCustomGroup guifg=#FF00FF guibg=#FFFFFF
]], false)

-- Define your list of LSP servers
local servers = {
    'tsserver',
    'eslint',
    'lua_ls',
    'rust_analyzer',
    'html',
}


-- Other lazy configurations...

-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
lspconfig.tsserver.setup {}
lspconfig.eslint.setup({
  --- ...
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
})

  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },


-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>[', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<Enter>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

-- disable completion with tab
-- this helps with copilot setup
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

local cmp = require('cmp')

-- Define your custom mappings
local cmp_mappings = {
  -- Your key mappings here
}

-- Set up nvim-cmp with your mappings
cmp.setup({
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
   -- ['<CR>'] = cmp.mapping.confirm({
--      behavior = cmp.ConfirmBehavior.Insert,
 --     select = true,
  --  }),
  },
  sources = {
    -- Add your completion sources here
    { name = "nvim_lsp" },
  { name = "luasnip" },
  { name = "buffer" },
  { name = "path" },
  },
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

--  if client.name == "eslint" then
--     vim.cmd.LspStop('eslint')
--      return
--  end

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
  vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})

require('lspkind').init({
    -- DEPRECATED (use mode instead): enables text annotations
    --
    -- default: true
    -- with_text = true,

    -- defines how annotations are shown
    -- default: symbol
    -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
    mode = 'symbol_text',

    -- default symbol map
    -- can be either 'default' (requires nerd-fonts font) or
    -- 'codicons' for codicon preset (requires vscode-codicons font)
    --
    -- default: 'default'
    preset = 'codicons',

    -- override preset symbols
    --
    -- default: {}
    symbol_map = {
      Text = "",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "ﰠ",
      Variable = "",
      Class = "ﴯ",
      Interface = "",
      Module = "",
      Property = "ﰠ",
      Unit = "塞",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "פּ",
      Event = "",
      Operator = "",
      TypeParameter = ""
    },
})




vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function(event)
    vim.highlight.on_yank({higroup = 'Visual', timeout = 200})
  end
})

 vim.api.nvim_create_autocmd('BufWinEnter', {
   callback = function(event)
     vim.opt.rnu = true
     vim.opt.number = true

     vim.cmd(":set signcolumn=yes")
   end
 })


vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function()
    local bufmap = function(mode, lhs, rhs)
      local opts = {buffer = true}
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    -- Displays hover information about the symbol under the cursor
    bufmap('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<cr>')

    -- Jump to the definition
    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')

    -- Jump to type definition
    bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.type_definition()<cr>')

    -- Renames all references to the symbol under the cursor
    bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.rename()<cr>')

    -- Selects a code action available at the current cursor position
    bufmap('n', '<M-CR>', '<cmd>lua vim.lsp.buf.code_action()<cr>')
    bufmap('x', '<M-CR>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')

    -- Show diagnostics in a floating window
    --bufmap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
    bufmap('n', 'gl', ':lua require"popui.diagnostics-navigator"()<CR>')

    -- Move to the previous diagnostic
    bufmap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')

    -- Move to the next diagnostic
    bufmap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
  end
})


vim.api.nvim_set_keymap("n", ",m", ':lua require"popui.marks-manager"()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", ",r", ':lua require"popui.references-navigator"()<CR>', { noremap = true, silent = true })


   

-- opts

vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function(event)
    vim.highlight.on_yank({higroup = 'Visual', timeout = 200})
  end
})

-- vim.api.nvim_create_autocmd('BufWinEnter', {
--   callback = function(event)
--     vim.opt.rnu = true
--     vim.opt.number = true
--
--     vim.cmd(":set signcolumn=yes")
--   end
-- })


vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function()
    local bufmap = function(mode, lhs, rhs)
      local opts = {buffer = true}
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    -- Displays hover information about the symbol under the cursor
    bufmap('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<cr>')

    -- Jump to the definition
    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')

    -- Jump to type definition
    bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.type_definition()<cr>')

    -- Renames all references to the symbol under the cursor
    bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.rename()<cr>')

    -- Selects a code action available at the current cursor position
    bufmap('n', '<M-CR>', '<cmd>lua vim.lsp.buf.code_action()<cr>')
    bufmap('x', '<M-CR>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')

    -- Show diagnostics in a floating window
    --bufmap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
    bufmap('n', 'gl', ':lua require"popui.diagnostics-navigator"()<CR>')

    -- Move to the previous diagnostic
    bufmap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')

    -- Move to the next diagnostic
    bufmap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
  end
})


vim.api.nvim_set_keymap("n", ",m", ':lua require"popui.marks-manager"()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", ",r", ':lua require"popui.references-navigator"()<CR>', { noremap = true, silent = true })



-- remaps
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set('n', 'U', '<C-r>')                         -- redo
vim.keymap.set('n', 'J', '5j')         -- scroll down
vim.keymap.set('n', 'K', '5k')         -- scroll up


vim.keymap.set({'n', 'v'}, '<leader>p', '"+p')            -- paste from system clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y')            -- copy to system clipboard
vim.keymap.set({'n', 'v'}, '<leader>d', '"+d')            -- cut to system clipboard
vim.keymap.set({'n', 'v'}, '<leader>j', ']')              -- next <something>
vim.keymap.set({'n', 'v'}, '<leader>k', '[')              -- prev <something>


local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>ff', builtin.find_files)
--vim.keymap.set('n', '<leader>fo', builtin.oldfiles)
--vim.keymap.set('n', '<leader>fg', builtin.live_grep)
--vim.keymap.set('n', '<leader>fb', builtin.buffers)
--vim.keymap.set('n', '<leader>fh', builtin.help_tags)
--
--html server stuu
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}

require'lspconfig'.emmet_language_server.setup{}

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

require'lspconfig'.tsserver.setup{
 
       
}

-- This module contains a number of default definitions
local rainbow_delimiters = require 'rainbow-delimiters'

vim.g.rainbow_delimiters = {
    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
    },
    highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
    },
}
--prettier
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
--eslint

local null_ls = require("null-ls")
local eslint = require("eslint")

null_ls.setup()

eslint.setup({
  bin = 'eslint', -- or `eslint_d`
  code_actions = {
    enable = true,
    apply_on_save = {
      enable = true,
      types = { "directive", "problem", "suggestion", "layout" },
    },
    disable_rule_comment = {
      enable = true,
      location = "separate_line", -- or `same_line`
    },
  },
  diagnostics = {
    enable = true,
    report_unused_disable_directives = false,
    run_on = "type", -- or `save`
  },
})
--harppon stuff
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
