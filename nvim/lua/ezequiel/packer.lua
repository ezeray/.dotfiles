-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use('https://github.com/tpope/vim-commentary') -- For Commenting gcc & gc

    use {
        'nvim-lua/plenary.nvim'
    }

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.x',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}


    -- colorscheme section
    -- -- rose-pie
	-- use({
		-- 'rose-pine/neovim',
		-- as = 'rose-pine',
		-- -- config = function()
		-- -- 	vim.cmd('colorscheme rose-pine')
		-- -- end
	-- })

    -- -- everforest
    -- use({
    --     "neanias/everforest-nvim",
    --     lazy = false,
    --     priority = 1000,
    -- })


    -- -- kanagawa
    -- use({
    --     'rebelot/kanagawa.nvim',
    --     as = 'kanagawa',
    -- })

    -- nice pastel color
    use { "catppuccin/nvim", as = "catppuccin" }

    -- end color scheme

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use('nvim-treesitter/playground')

	use('theprimeagen/harpoon')

	use('mbbill/undotree')

	use('tpope/vim-fugitive')

    	use('lewis6991/gitsigns.nvim')

	-- -- lsp configuration
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

	-- 		-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}


	use('https://github.com/preservim/nerdtree') -- NerdTree
	use('https://github.com/vim-airline/vim-airline') -- Status bar

	-- -- floatterm
	use('voldikss/vim-floaterm')

	-- -- tagbar
	use('https://github.com/preservim/tagbar')

	use('ryanoasis/vim-devicons')

    -- docs generator
    use({
      'kkoomen/vim-doge',
      run = ':call doge#install()'
    })


    -- use({
    --     "andrewferrier/wrapping.nvim",
    --     config = function()
    --         require("wrapping").setup()
    --     end,
    -- })

    -- use({
    --     "smoka7/multicursors.nvim",
    --     requires = {
    --         'smoka7/hydra.nvim',
    --     },
    --     cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    -- })

end)
