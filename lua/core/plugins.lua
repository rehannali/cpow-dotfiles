local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'wbthomason/packer.nvim',
  'ellisonleao/gruvbox.nvim',
  {
    'dracula/vim',
    lazy = false,
  },
  { 
    "bluz71/vim-moonfly-colors", 
    name = "moonfly", 
    lazy = false, 
    priority = 1000 
  },
  { 
    "bluz71/vim-nightfly-colors", 
    name = "nightfly", 
    lazy = false, 
    priority = 1000 
  },
  'marko-cerovac/material.nvim',
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',
  'nvim-treesitter/nvim-treesitter',
  'vim-test/vim-test',
  'lewis6991/gitsigns.nvim',
  'preservim/vimux',
  'christoomey/vim-tmux-navigator',
  'tpope/vim-fugitive',
  'tpope/vim-surround',
  -- completion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  "rafamadriz/friendly-snippets",
  "github/copilot.vim",
  "glepnir/lspsaga.nvim",

  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  
  {
    'nvim-telescope/telescope.nvim',
	  tag = '0.1.0',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
  }
}

local opts = {}

require("lazy").setup(plugins, opts)
