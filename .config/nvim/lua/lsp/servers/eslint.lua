local M = {}

-- Auto-install

local lsp_installer_servers = require'nvim-lsp-installer.servers'

local ok, eslint = lsp_installer_servers.get_server("eslint")
if ok then
    if not eslint:is_installed() then
        eslint:install()
    end
end

-- Settngs

M.settings = {
  format = { enable = true }
}

return M
