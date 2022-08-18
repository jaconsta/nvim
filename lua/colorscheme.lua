local cmd = vim.cmd
cmd "colorscheme everforest"
cmd "set background=dark"
-- vim.o.termguicolors = true

-- some color schemes do not have LSP diagnostics highlighting or are changed by the color schemes.
cmd([[ autocmd ColorScheme * :lua vim.lsp.diagnostic._define_default_signs_and_highlights() ]])

