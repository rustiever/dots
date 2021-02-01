return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'wakatime/vim-wakatime'
  use 'bluz71/vim-moonfly-colors'
  use 'glepnir/zephyr-nvim'
  use 'romgrk/barbar.nvim'
  use 'unblevable/quick-scope'
  use 'machakann/vim-sandwich'
  use 'preservim/nerdcommenter'
  use 'jiangmiao/auto-pairs'
  -- use 'golang/vscode-go'
  -- use 'simnalamburt/vim-mundo',
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use {
    'fatih/vim-go',
    run = ':GoUpdateBinaries'
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'nvim-treesitter/nvim-treesitter-textobjects',
  }
  use {
    'nvim-treesitter/nvim-treesitter-refactor',
  }
  use {
  'nvim-telescope/telescope.nvim',
  requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
}
  use {
    'hrsh7th/vim-vsnip',
    requires = {'hrsh7th/vim-vsnip-integ', opt = true}
  }
  use {
    'glepnir/galaxyline.nvim',
    branch = 'main',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
end)
