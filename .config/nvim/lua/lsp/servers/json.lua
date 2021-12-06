-- npm i -g vscode-langservers-extracted

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.jsonls.setup {
  capabilities = capabilities,
  json = {
    schemas = {
      {
        fileMatch = {"package.json"},
        url = "https://json.schemastore.org/package.json"
      },
      {
        fileMatch = {"tsconfig*.json"},
        url = "https://json.schemastore.org/tsconfig.json"
      },
      {
        fileMatch = {".prettierrc", ".prettierrc.json", "prettier.config.json"},
        url = "https://json.schemastore.org/prettierrc.json"
      },
      {
        fileMatch = {".eslintrc", ".eslintrc.json"},
        url = "https://json.schemastore.org/eslintrc.json"
      },
      {
        fileMatch = {".babelrc", ".babelrc.json", "babel.config.json"},
        url = "https://json.schemastore.org/babelrc.json"
      },
      {
        fileMatch = {"lerna.json"},
        url = "https://json.schemastore.org/lerna.json"
      },
      {
        fileMatch = {"now.json", "vercel.json"},
        url = "https://json.schemastore.org/now.json"
      },
      {
        fileMatch = {"ecosystem.json"},
        url = "https://json.schemastore.org/pm2-ecosystem.json"
      },
    }
  }
}
