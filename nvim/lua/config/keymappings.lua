local telescope_builtin = require("telescope.builtin")
 
vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope_builtin.help_tags, { desc = 'Telescope help tags' })
 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
 
-- Move the highlighter visual block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Up / Down. Cursor remains in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-du>zz")
-- Search terms remain in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
--Join lines, cursor remains on its position
vim.keymap.set("n", "J", "mzJ`z")
 
-- Preserve buffer over pasted item
--vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("x", "<leader>p", [["_dP]])
 
-- Copy to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
 
-- Delete to anonymous register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
 
-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])


