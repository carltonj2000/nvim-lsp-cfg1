local ensure_packer = function()
  local fn = vim.fn
  local install_path =
    fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1',
      'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')

  use("folke/which-key.nvim")

  use('nvim-lua/plenary.nvim')
  use('nvim-tree/nvim-web-devicons')
  use('nvim-telescope/telescope.nvim')
  use('nvim-telescope/telescope-file-browser.nvim')

  use('folke/tokyonight.nvim')

  use('neovim/nvim-lspconfig')
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-nvim-lsp')

  use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	use("L3MON4D3/LuaSnip")
  use('saadparwaiz1/cmp_luasnip')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use("rafamadriz/friendly-snippets")

	use("nvim-lualine/lualine.nvim")
  use('akinsho/bufferline.nvim')
  use('LukasPietzschmann/telescope-tabs')
	use("windwp/nvim-autopairs")
	use("norcalli/nvim-colorizer.lua")

	use("akinsho/toggleterm.nvim")
	use("lewis6991/gitsigns.nvim")

  if packer_bootstrap then
    require('packer').sync()
  end
end)
