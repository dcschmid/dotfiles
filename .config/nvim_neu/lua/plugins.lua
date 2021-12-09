--If you want to automatically ensure that packer.nvim is installed on any machine you clone your configuration to,
--add the following snippet somewhere in your config before your first usage of packer:

local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = '~/.local/share/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup{function()

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use { -- A blazing fast and easy to configure neovim statusline plugin written in pure lua.
        'nvim-lualine/lualine.nvim',
        config = [[ require('plugins/lualine') ]]
  }

  use { -- A collection of common configurations for Neovim's built-in language server client
        'neovim/nvim-lspconfig',
        config = [[ require('plugins/lspconfig') ]]
  }

  use { -- vscode-like pictograms for neovim lsp completion items Topics
        'onsails/lspkind-nvim',
        config = [[ require('plugins/lspkind') ]]
  }

  use { -- Utility functions for getting diagnostic status and progress messages from LSP servers, for use in the Neovim statusline
        'nvim-lua/lsp-status.nvim',
        config = [[ require('plugins/lspstatus') ]]
	}

	use { --  A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing
		"folke/trouble.nvim",
  config = function()
    require("trouble").setup {
icons = false,
    fold_open = "v", -- icon used for open folds
    fold_closed = ">", -- icon used for closed folds
    indent_lines = false, -- add an indent guide below the fold icons
    signs = {
        -- icons / text used for a diagnostic
        error = "error",
        warning = "warn",
        hint = "hint",
        information = "info"
    },
    use_lsp_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client

		}
  end
}

  use { -- A completion plugin for neovim coded in Lua.
        'hrsh7th/nvim-cmp',
        requires = {
          "hrsh7th/cmp-nvim-lsp",           -- nvim-cmp source for neovim builtin LSP client
          "hrsh7th/cmp-nvim-lua",           -- nvim-cmp source for nvim lua
          "hrsh7th/cmp-buffer",             -- nvim-cmp source for buffer words.
          "hrsh7th/cmp-path",               -- nvim-cmp source for filesystem paths.
          "hrsh7th/cmp-calc",               -- nvim-cmp source for math calculation.
          "saadparwaiz1/cmp_luasnip",       -- luasnip completion source for nvim-cmp
					"David-Kunz/cmp-npm",							-- An additional source for nvim-cmp to autocomplete packages and its versions
	        "lukas-reineke/cmp-rg",						-- ripgrep source for nvim-cmp
					"f3fora/cmp-spell",								-- spell source for nvim-cmp based on vim's spellsuggest
				},
        config = [[ require('plugins/cmp') ]],
  }

  use { -- Snippet Engine for Neovim written in Lua.
        'L3MON4D3/LuaSnip',
        requires = {
          "rafamadriz/friendly-snippets",   -- Snippets collection for a set of different programming languages for faster development.
        },
        config = [[ require('plugins/luasnip') ]],
  }

  use { --  colorscheme for (neo)vim written in lua specially made for roshnivim
       'EdenEast/nightfox.nvim',
  }

  use { -- Nvim Treesitter configurations and abstraction layer
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = [[ require('plugins/treesitter') ]]
  }

  use { -- Utilities to improve the TypeScript development experience for Neovim's built-in LSP client.
       'jose-elias-alvarez/nvim-lsp-ts-utils',
       requires = {
          "nvim-lua/plenary.nvim"
       }
  }

  use { -- Neovim treesitter plugin for setting the commentstring based on the cursor location in a file.
       'JoosepAlviste/nvim-ts-context-commentstring'
  }

  use { -- Neovim treesitter plugin for setting the commentstring based on the cursor location in a file.
        'terrortylor/nvim-comment',
        config = [[ require('plugins/comment') ]]
  }

  use { -- Use treesitter to auto close and auto rename html tag
        'windwp/nvim-ts-autotag'
  }

	use { -- Indent guides for Neovim
			  use "lukas-reineke/indent-blankline.nvim"
	}

  use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { -- Neovim treesitter plugin for setting the commentstring based on the cursor location in a file.
        'mhartington/formatter.nvim',
        config = [[ require('plugins/formatter') ]]
  }

  use { -- A Vim plugin that manages your tag files
       'ludovicchabant/vim-gutentags'
  }

  use { -- A small automated session manager for Neovim
      'rmagatti/auto-session',
      config = function()
      require('auto-session').setup {
        log_level = 'info',
      }
    end
  }

  use { -- A session-switcher extension for rmagatti/auto-session using Telescope.nvim
      'rmagatti/session-lens',
      config = function()
      require('session-lens').setup({
        previewer = false
      })
     end
  }

  use { -- collaborative editing in Neovim using built-in capabilities
       'jbyuki/instant.nvim',
  }

  use { -- A Neovim plugin to easily run and debug Jest tests
       'David-Kunz/jester',
  }

	use { -- Single tabpage interface for easily cycling through diffs for all modified files for any git rev
		'sindrets/diffview.nvim',
		requires = 'nvim-lua/plenary.nvim',
    config = [[ require('plugins/diffview') ]]
	}

  use { -- An asynchronous grammar checker for Neovim using LanguageTool
       'vigoux/LanguageTool.nvim',
  }

  use { -- Translate text in neovim using free Google translate API
    "kraftwerk28/gtranslate.nvim",
    requires = {"nvim-lua/plenary.nvim"},
  }

end, config = {
  -- Move to lua dir so impatient.nvim can cache it
  compile_path = vim.fn.stdpath('config')..'/plugin/packer_compiled.lua'

  }
}
