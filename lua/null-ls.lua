local status_ok, null_ls = pcall(require, "null_ls")
if not status_ok then
  return
end

-- See supported sources
-- :NullLsInfo

local formatting = null_ls.builtins.formatting
local diagnostic = null_ls.builtins.diagnostics  -- linter
local completion = null_ls.builtins.completion

-- formatting command
-- :lua vim.lsp.buf.formatting_sync()

null_ls.setup({
  debug = false,
  sources = {
    formatting.stylua,
    diagnostic.eslint,
    formatting.prettier.with({ extra_args = {"--no-semi", "--single-quote", "--jsx-singe-quote", } }),
    formatting.black.with({ extra_args = { "--fast" } }),
    diagnostic.flake8,
    completion.spell,
  }
})
