-- Auto-install

local lsp_installer_servers = require'nvim-lsp-installer.servers'

local ok, tsserver = lsp_installer_servers.get_server("tsserver")
if ok then
    if not tsserver:is_installed() then
        tsserver:install()
    end
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport =true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

-- npm install -g typescript typescript-language-server
require'lspconfig'.tsserver.setup({
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formatting = false

    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

    require("nvim-lsp-ts-utils").setup {
        debug = false,
        disable_commands = false,
        enable_import_on_completion = true,
        import_all_timeout = 5000, -- ms

        -- parentheses completion
        complete_parens = false,
        signature_help_in_parens = false,

        -- lower numbers = higher priority
        import_all_priorities = {
            same_file = 1, -- add to existing import statement
            local_files = 2, -- git files or files with relative path markers
            buffer_content = 3, -- loaded buffer content
            buffers = 4, -- loaded buffer names
        },

				import_all_scan_buffers = 100,
        import_all_select_source = false,

        -- update imports on file move
        update_imports_on_move = true,
        require_confirmation_on_move = true,
        watch_dir = nil,

        -- filter diagnostics
        filter_out_diagnostics_by_severity = { "hint" },
        filter_out_diagnostics_by_code = {},
    }

    require("nvim-lsp-ts-utils").setup_client(client)

    -- no default maps, so you may want to define some here
    local opts = { silent = true }
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gs", ":TSLspOrganize<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", ":TSLspRenameFile<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", ":TSLspImportAll<CR>", opts)
	end
})
