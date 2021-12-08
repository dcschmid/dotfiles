-- npm i -g stylelint-lsp

require'lspconfig'.stylelint_lsp.setup{
	settings = {
    stylelintplus = {
			autofix = true,
			cssInJS = true,
			validateOnType = true
    }
  }
}
