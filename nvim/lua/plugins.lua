return require('packer').startup(function()
    use 'sainnhe/edge'
    use 'wakatime/vim-wakatime'
    use 'romgrk/barbar.nvim'
    use 'machakann/vim-sandwich'
   use {
        'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function() require'tree-config'.setup() end
    }
    use {
        'neovim/nvim-lspconfig',
        config = function() 
            require 'lspconfig'.gopls.setup {
                cmd = {"gopls", "serve"},
                settings = {
                    gopls = {
                        analyses = {
                            unusedparams = true,
                        },
                        staticcheck = true,
                    },
                },
            }
        end
    }
    use {
        'hrsh7th/nvim-compe',
        config = function()
            require'compe'.setup {
                enabled = true;
                autocomplete = true;
                debug = false;
                min_length = 1;
                preselect = 'enable';
                throttle_time = 80;
                source_timeout = 200;
                incomplete_delay = 400;
                max_abbr_width = 100;
                max_kind_width = 100;
                max_menu_width = 100;
                documentation = true;

                source = {
                    path = true;
                    buffer = true;
                    calc = true;
                    nvim_lsp = true;
                    nvim_lua = true;
                    vsnip = true;
                };
            }
        end

    }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' ,
        config = function()
            require('nvim-treesitter.configs').setup({
                highlight = {
                    enable = true,
                },
                indent = {
                    enable = true,
                },
            })
        end
    }
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
        config = function()
            require('gitsigns').setup()
        end
    }
    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = function() require('galaxy') end
    }
end)

