-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- https://github.com/wbthomason/packer.nvim

local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

require "paq" {
  "savq/paq-nvim";                  -- Let Paq manage itself
  "EdenEast/nightfox.nvim";          -- A dark (Neo)vim theme written in lua.
  "Famiu/feline.nvim";            -- A blazing fast and easy to configure neovim statusline written in pure lua.
  {'nvim-treesitter/nvim-treesitter', run = 'TSUpdate'};
  "nvim-lua/plenary.nvim";
  "nvim-telescope/telescope.nvim";
  "neovim/nvim-lspconfig";
  "williamboman/nvim-lsp-installer";
  "hrsh7th/cmp-nvim-lsp";
  "hrsh7th/cmp-buffer";
  "hrsh7th/nvim-cmp";
  "L3MON4D3/LuaSnip";
  "saadparwaiz1/cmp_luasnip";
  "nvim-lua/plenary.nvim";
  "lewis6991/gitsigns.nvim";
}
