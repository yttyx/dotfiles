local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer; close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- General
  use "wbthomason/packer.nvim"          -- Have packer manage itself
  use "nvim-lua/popup.nvim"             -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim"           -- Useful lua functions used by lots of plugins
  use "windwp/nvim-autopairs"           -- Autopairs, integrates with both cmp and treesitter
  use "numToStr/Comment.nvim"           -- Easily comment stuff
  -- use "kyazdani42/nvim-web-devicons"
  use "kyazdani42/nvim-tree.lua"
  -- use "akinsho/bufferline.nvim"
  -- use "moll/vim-bbye"
  -- use "nvim-lualine/lualine.nvim"
  -- use "akinsho/toggleterm.nvim"
  -- use "ahmedkhalf/project.nvim"
  -- use "lewis6991/impatient.nvim"
  -- use "lukas-reineke/indent-blankline.nvim"
  -- use "goolord/alpha-nvim"
  -- use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
  -- use "folke/which-key.nvim"

  use "gruvbox-community/gruvbox"
  use "tpope/vim-fugitive"
  use "tpope/vim-commentary"
  use "jremmen/vim-ripgrep"
  use "vim-utils/vim-man"
  use "lyuts/vim-rtags"
  use "mbbill/undotree"
  use "honza/vim-snippets"
  use "9mm/vim-closer"
  use "liuchengxu/vim-which-key"

  -- cmp Plugins
  use "hrsh7th/nvim-cmp"                -- The completion plugin
  use "hrsh7th/cmp-buffer"              -- Buffer completions
  use "hrsh7th/cmp-path"                -- Path completions
  use "hrsh7th/cmp-cmdline"             -- Command line completions
  use "saadparwaiz1/cmp_luasnip"        -- Snippet completions
  use "hrsh7th/cmp-nvim-lsp"

  -- Snippets
  use "L3MON4D3/LuaSnip"                -- snippet engine
  use "rafamadriz/friendly-snippets"    -- a bunch of snippets to use

  -- LSP TBW
  use 'neovim/nvim-lspconfig'           -- collection of configurations for the built-in LSP client
  use "williamboman/nvim-lsp-installer" -- package manager

  use "tamago324/nlsp-settings.nvim"    -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  use 'nvim-lua/lsp-status.nvim'
  use 'nvim-lua/completion-nvim'
  use 'nvim-lua/diagnostic-nvim'

  -- Telescope
  use "nvim-telescope/telescope.nvim"

    -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- VIMWiki
  use "vimwiki/vimwiki"
  use "suan/vim-instant-markdown"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
