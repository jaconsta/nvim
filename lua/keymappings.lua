local keymap = vim.api.nvim_set_keymap
-- ------
-- Useful mode-specific shortcuts
-- nomenclature: "<expr?><mode><nore?>map(lhs, rhs)" where:
--      "expr?" optional expr option
--      "nore?" optional no-remap option
--      modes -> 'n' = NORMAL, 'i' = INSERT, 'x' = 'VISUAL', 'v' = VISUAL + SELECT, 't' = TERMINAL
-- ------

-- Nerdtree shortcuts. <leader> == <C-t>
-- toggle NERDTree show/hide using <C-n> and <leader>n
keymap("n", "<leader>nn", ":NERDTreeToggle<CR>", {noremap = true})
keymap("n", "<leader>nf", ":NERDTreeFocus<CR>", {noremap = true})
keymap("n", "<leader>ng", ":NERDTreeFind<CR>", {noremap = true})
-- vim.api.nvim_set_keymap("n", "<leader>n", ":NERDTreeToggle<CR>", {noremap = true}) -- duplicate?

-- Try the command :Telescope find_files<cr>
-- nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", {noremap = true})
-- nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", {noremap = true})
-- nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
-- nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

-- From flutter.lua
keymap('n', '<Leader>ca',':Lspsaga code_action<CR>',
  { noremap = true, silent = true })
keymap('n', '<Leader>fe',':Lspsaga diagnostic_jump_next<CR>',
  { noremap = true, silent = true })
keymap("n", "gd", "<cmd>Lspsaga preview_definition<CR>",
  { silent = true })
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
keymap("x", "<leader>ca", "<cmd>lua vim.lsp.buf.range_code_action()<CR>", {noremap = true, silent = true, expr = true})


keymap('n', '<Leader>fr',':FlutterRun<CR>'
  , { noremap = true, silent = true })
keymap('n', '<Leader>fc',
  [[<Cmd>lua require('telescope').extensions.flutter.commands()<CR>]],
  { noremap = true, silent = true })

-- LSP normal -- needs fix
keymap("x", "<Leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>",
  { noremap = true, silent = true, expr = true })
