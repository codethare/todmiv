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

local status, lazy = pcall(require, "lazy")
if (not status) then
  print("Lazy is not installed")
  return
end

local plugins = {
  'neovim/nvim-lspconfig',                -- use a language server
  'lewis6991/gitsigns.nvim',
  'L3MON4D3/LuaSnip',
  'jose-elias-alvarez/null-ls.nvim',
  'folke/trouble.nvim',
  'dinhhuy258/git.nvim',
  'tjdevries/colorbuddy.nvim',
  'norcalli/nvim-colorizer.lua',          --  css color
  'github/copilot.vim',

  {
  'hrsh7th/nvim-cmp',
      dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/nvim-insx',
        'saadparwaiz1/cmp_luasnip',
      },
  },

  { 'echasnovski/mini.indentscope', version = false },
  { 'echasnovski/mini.statusline', version = false },
  { 'echasnovski/mini.surround', version = false },
  { 'echasnovski/mini.comment', version = false },
  { 'lukas-reineke/indent-blankline.nvim', event = 'VeryLazy' },

  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' }
  },

}

local opt = {}

lazy.setup(plugins, opt)
