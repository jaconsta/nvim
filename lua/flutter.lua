local keymap = vim.api.nvim_set_keymap
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true;
require("flutter-tools").setup{
  lsp = {
    capabilities = capabilities,
  }
}

-- 
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true;
-- 
-- require("flutter-tools").setup {
--   lsp = {
--     capabilities = capabilities,
--   }
-- }

-- Formatting
-- autoformat on save
-- vim.cmd 'au BufWritePre *.dart :DartFmt'

-- Code snippets
vim.g.vsnip_snippet_dir = "/Users/javierc/.config/nvim/code_snippets"

-- LSP Diagnostic appearance
-- LSP Enable diagnostics
--  vim.lsp.handlers["textDocument/publishDiagnostics"] =
--     vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
--         virtual_text = false,
--         underline = true,
--         signs = true,
--         update_in_insert = false
--    })
--
-- Code actions and UI changes - LSP Saga
local saga = require('lspsaga')
saga.init_lsp_saga {
  -- Error, Warn, Info, Hint
  diagnostic_header = { "😡", "😥", "😤", "😐" },
  show_diagnostic_source = true,
  -- error_sign = '➤',
  -- warn_sign = '➤',
  -- hint_sign = '➤',
  -- infor_sign = '➤',
  code_action_icon = "💡",
  code_action_keys = {
    quit = '<ESC>',exec = '<CR>'
  },
}
