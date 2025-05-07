local keymap = vim.keymap.set
local opts = { silent = true }

-- Silent keymap option

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

--save without faff!!!!
keymap("n", "H", ":w!<CR>",opts) 
--easy return to insert mode
keymap('i', 'jj', '<Esc>',opts)
--use prettier!!!!
keymap('n' , '<Leader>ll', ':Prettier<CR>',opts)

-- Normal

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--move line
keymap("n", "<M-Down>", ":m .+1<CR>==", opts)
keymap("v", "<M-Down>", ":m '>+1<CR>gv=gv", opts)
keymap("i", "<M-Down>", "<ESC>:m .+1<CR>==gi", opts)
keymap("n", "<M-Up>", ":m .-2<CR>==", opts)
keymap("v", "<M-Up>", ":m '<-2<CR>gv=gv", opts)
keymap("i", "<M-Up>", "<ESC>:m .-2<CR>==gi", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "]b", ":bnext<CR>", opts)
keymap("n", "[b", ":bprevious<CR>", opts)
keymap("n", "[B", ":bfirst<CR>", opts)
keymap("n", "]B", ":blast<CR>", opts)
-- Close buffers
keymap("n", "<C-q>", ":bd<Cr>", opts)
--buffer back
keymap("n", "<leader>b", "<c-^>", opts)

--center search
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
--

keymap("n", "<M-q>", ":tabc<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)


-- Better paste
keymap("v", "p", '"_dP', opts)

-- Insert --
-- Press jk fast to re-enter normal mode
--keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)

keymap("n", "<leader>fc", ":lua require('telescope').extensions.neoclip.default()<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope project<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fs", "<cmd>Telescope grep_string<cr>", opts) -- find string under cursor in current working directory
keymap("n", '<leader>fk', [[<cmd>lua require('telescope.builtin').keymaps()<cr>]], opts)
keymap('n', '<leader>fo', '<cmd>Telescope oldfiles<cr>', opts)
keymap('n', '<leader>ft', ":Telescope current_buffer_tags<CR>", opts)
keymap('n', '<leader>fh', ':Telescope harpoon marks<CR>', opts)
keymap('n', '<leader>fx', '<cmd>Telescope current_buffer_fuzzy_find<cr>')
keymap('n', '<leader>fj', '<cmd>Telescope jumplist<cr>')
-- keymap("n", "<leader>o", "<cmd>Portal jumplist backward<cr>",opts)
-- keymap("n", "<leader>i", "<cmd>Portal jumplist forward<cr>",opts)

-- Comment
--keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
--keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.current()<cr>", opts)
--wrongkeymap('n', "<leader>/", api.toggle.linewise.current,opts)
--keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')
--keymap("n", "<leader>/", "<cmd>lua require
--('Comment.api').toggle_current_linewise()<CR>", opts)
-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)


keymap("n", "<leader>zz", '<CMD>lua require("FTerm").toggle()<CR>', opts)
keymap('t', '<leader>zz', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)


--insert mode big D delete!!!!!
--keymap("i", "<C-d>","<C-O>D",opts)

--toggle spellcheck
local function vim_opt_toggle(opt, on, off, name)
  local message = name
  if vim.opt[opt]:get() == off then
    vim.opt[opt] = on
    message = message .. " Enabled"
  else
    vim.opt[opt] = off
    message = message .. " Disabled"
  end
  vim.notify(message)
end

vim.keymap.set("n", "<leader>s", function()
  vim_opt_toggle("spell", true, false, "Spelling")
end)
-- place this in one of your configuration file(s)
keymap('n', '<leader>nn', "<cmd>lua require'hop'.hint_anywhere()<cr>", opts)
keymap('n', '<leader>xx', "<cmd>lua require'hop'.hint_words()<cr>", opts)
keymap('n', '<leader>pp', "<cmd>lua require'hop'.hint_patterns()<cr>", opts)
keymap('n', '<leader>ww', "<cmd>lua require'hop'.hint_char1()<cr>", opts)
keymap('n', '<leader>tt', '<cmd>SymbolsOutline<CR>', opts)
--toggle tags

--vim.api.nvim_set_keymap('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>", {})
--vim.api.nvim_set_keymap('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>", {})
--vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false, hint_offset = -1 })<cr>", {})
-- vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false, hint_offset = 1 })<cr>", {})
