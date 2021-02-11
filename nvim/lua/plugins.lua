return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'wakatime/vim-wakatime'
    use 'romgrk/barbar.nvim'
    use 'unblevable/quick-scope'
    use 'machakann/vim-sandwich'
    -- use 'b3nj5m1n/kommentary'
    use 'glepnir/prodoc.nvim'
    use 'jiangmiao/auto-pairs'
    use 'golang/vscode-go'
    -- use 'simnalamburt/vim-mundo',
    use 'glepnir/lspsaga.nvim'
    use 'hrsh7th/nvim-compe'
    use {
        'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function() require'tree-config'.setup() end
    }
    use { 'glepnir/zephyr-nvim',
    config = function() require('zephyr') end
}
use {
    'neovim/nvim-lspconfig'
}
use {
    'lewis6991/gitsigns.nvim',
    requires = {
        'nvim-lua/plenary.nvim'
    },
    config = function() require('gitsigns').setup() end
}
use {
    'fatih/vim-go',
    run = ':GoUpdateBinaries'
}
use {
    'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
}
-- use {
-- 'nvim-treesitter/nvim-treesitter-textobjects',
-- }
-- use {
-- 'nvim-treesitter/nvim-treesitter-refactor',
-- }
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
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function() require('galaxy') end
} 
end)
