local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },

  ensure_installed = { "help", "javascript", "typescript", "c", "lua", "rust","html","css" },
  autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
--======================>
  -- A list of parser names, or "all"

  -- Install parsers synchronously (only applied to `ensure_installed`)

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally

    -- `false` will disable the whole extension
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
 -- rainbow = {
 --    enable = true,
 --    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
 --    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
 --    max_file_lines = nil, -- Do not enable for files with more than n lines, int
 --    -- colors = {}, -- table of hex strings
 --    -- termcolors = {} -- table of colour name strings
 --  }

