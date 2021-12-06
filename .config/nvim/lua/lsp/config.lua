local signs = { Error = "✗", Warn = "⚠", Hint = "", Info = "" }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

require('lsp.servers.css')
require('lsp.servers.eslint')
require('lsp.servers.graphql')
require('lsp.servers.html')
require('lsp.servers.json')
require('lsp.servers.tsserver')
require('lsp.servers.tailwind')
require('lsp.servers.volar')
