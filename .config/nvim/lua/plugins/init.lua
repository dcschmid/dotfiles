vim.cmd('packadd packer.nvim')

local packer = require('packer')

local configs = {
  treesitter = function() require('plugins/configs/treesitter') end, 
  lualine = function() require('plugins/configs/lualine') end,
}

return packer.startup(function()
  use {'wbthomason/packer.nvim', opt = true}
  use {'cocopon/iceberg.vim'}
  use {'nvim-treesitter/nvim-treesitter', config = configs.treesitter}
  use {
    'hoob3rt/lualine.nvim',
    config = configs.lualine,
  }
end)



