return require("packer").startup(function()

		---------------------
        -- Package Manager --
        ---------------------
	use "wbthomason/packer.nvim"
	
		----------------------
        --   Dependencies   --
        ----------------------
	use "nvim-lua/plenary.nvim"
	-- devcons
	use "kyazdani42/nvim-web-devicons"
	use "nvim-treesitter/nvim-treesitter"


        ----------------------------------------------
        -- Themes, Status Line, Buffer Tabs, Syntax --
        ----------------------------------------------

	--themes
	use "RRethy/nvim-base16"

	-- lualine
	use {"nvim-lualine/lualine.nvim", config = function()
			require("Bl4ckb3ard.plugins.lualine")
		end}

	--syntax highliting
	use "sheerun/vim-polyglot"

		---------------------------
        -- Functionality Plugins --
		---------------------------

	-- easy way to comment stuff out
	use "tpope/vim-commentary"
	
	-- telescope
	use {"nvim-telescope/telescope.nvim", tag = "0.1.0", config = function()
			require("Bl4ckb3ard.plugins.telescope")
		end}
	
		---------------------
        --       LSP       --
		---------------------

	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'neovim/nvim-lspconfig'
	use 'w0rp/ale'

	-- Autopairs
	-- have to load autopairs after nvim-cmp
	use {"windwp/nvim-autopairs", after = "nvim-cmp", config = function()
			require("Bl4ckb3ard.plugins.pairs")
		end}

end)
