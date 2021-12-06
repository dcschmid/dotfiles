local M = {}

-- Auto-install

local lsp_installer_servers = require'nvim-lsp-installer.servers'

local ok, volar = lsp_installer_servers.get_server("vls")
if ok then
    if not volar:is_installed() then
        volar:install()
    end
end

-- Setting

M.settings = {}

return M
