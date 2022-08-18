M = {}
local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

-- Check configured lang servers
-- :LspInfo

lspconfig.pyright.setup(require('lsp.settings.pyright'))  -- Python
lspconfig.eslint.setup{}  -- JS and others
lspconfig.tsserver.setup{} -- Typescript
lspconfig.dockerls.setup{}
lspconfig.graphql.setup{}
lspconfig.html.setup{}
-- lspconfig.jsonls.setup{}
-- lspconfig.marksman.setup{}
-- lspconfig.rls.setup{}  -- Rust
-- lspconfig.solang.setup{} -- Solidity


