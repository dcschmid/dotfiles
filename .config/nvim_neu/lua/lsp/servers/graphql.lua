-- npm install -g graphql-language-service-cli

require'lspconfig'.graphql.setup{
	cmd = { "graphql-lsp", "server", "-m", "stream" },
  filetypes = { "graphql" },
}
