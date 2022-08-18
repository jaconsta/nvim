require("packer").startup(function(use)
	-- Packer can manage itself
  use "wbthomason/packer.nvim"

  -- LSP server
  use "neovim/nvim-lspconfig"
  -- use "williamboman/nvim-lsp-installer"  -- DEPRECATED. Helper for installing most language servers
  --  use "williamboman/mason.nvim"
  -- # Language Servers install
  -- -> Docs: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
  -- jose-elias-alvarez/null-ls.nvim
  use "j-hui/fidget.nvim"

  -- colorschemes
  use "sainnhe/everforest"
  -- use "lunarvim/darkplus.nvim"  -- lunarvim/colorschemes

  use "preservim/nerdtree"       -- File explorer
  use "vim-airline/vim-airline"  -- Lean & mean statusbar/tabline
  use "ryanoasis/vim-devicons"   -- File icons visible in nerdree and airline
  -- Works with "Hack Nerd Font" font-hack-nerd-font
  use "nvim-lua/plenary.nvim"    -- Used by many plugins
  use { -- Treesitter
   "nvim-treesitter/nvim-treesitter",
   run = function() require("nvim-treesitter.install").update({ with_sync = true }) end  -- ":TSUpdate",
  }
  use "p00f/nvim-ts-rainbow" 
  use {  -- File finder -Fuzzy finder
    "nvim-telescope/telescope.nvim", tag = "0.1.0",
    requires = { {"BurntSushi/ripgrep", "sharkdp/fd"} }
  }
  -- Requires ripgrep

  -- Flutter tools
  use {
    "akinsho/flutter-tools.nvim", 
    requires = "nvim-lua/plenary.nvim"
  }
  use "dart-lang/dart-vim-plugin"

  -- Git tools
  use "lewis6991/gitsigns.nvim"
  -- use "tpope/vim-fugitive"  -- A lot of git commands. Uses :G <cmd>

  -- Auto completion and snippets
  use "hrsh7th/nvim-compe"
  use "hrsh7th/vim-vsnip"
  use "hrsh7th/vim-vsnip-integ"

  -- Code actions and UI changes
  use "glepnir/lspsaga.nvim"

  --
  -- To check later
  -- -
  -- "tpope/vim-commentary"  -- Use gcc to comment out a line (takes a count), gc to comment out the target
	-- use "preservim/nerdcommenter" -- also for easily changing a line to comment
	--
	-- "vim-airline/vim-airline-themes" -- 
	-- "tc50cal/vim-terminal"  -- Launch a terminal from VIM buffer
	-- "rafi/awesome-vim-colorschemes"  -- Collection of color schemes
	-- "preservim/tagbar"  -- Browse the tags of the current file
	-- -- Requires 
	-- --   brew tap universal-ctags/universal-ctags
    -- --   brew install --HEAD universal-ctags
	-- "ap/vim-css-color"  -- CSS Colors
	-- "tpope/vim-surround"  
  --
  -- use "folke/twilight"  -- Dims inactive portions of the code you are editing.
  -- use "windwp/nvim-ts-autotag" -- Autoclose and autorename html tag 
  --
  -- Specific syntax highlight
  -- use "wfxr/protobuf.vim"  -- gRPC and Protobuffers
end)

