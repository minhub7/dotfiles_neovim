# Dev Environment Files


## Contents
- **zsh**
- **Neovim**  
- **tmux**


```
.
├── nvim
│   ├── init.lua
│   ├── lua
│   │   ├── core
│   │   │   ├── colorscheme.lua
│   │   │   ├── keymaps.lua
│   │   │   └── options.lua
│   │   ├── lsp (for language server protocol)
│   │   │   ├── handlers.lua
│   │   │   ├── init.lua
│   │   │   ├── mason.lua
│   │   │   ├── null-ls.lua
│   │   │   └── settings
│   │   │       ├── jsonls.lua
│   │   │       ├── pyright.lua
│   │   │       └── sumneko_lua.lua
│   │   ├── plugins (Details for various plugins)
│   │   │   ├── autopairs.lua
│   │   │   ├── barbar.lua
│   │   │   ├── comment.lua
│   │   │   ├── completion.lua
│   │   │   ├── feline.lua
│   │   │   ├── gitsigns.lua
│   │   │   ├── indentline.lua
│   │   │   ├── neovide.lua
│   │   │   ├── nvim-tree.lua
│   │   │   ├── telescope.lua
│   │   │   └── treesitter.lua
│   │   └── setup.lua (setup plugins using packer.nvim)
│   └── plugin
│       └── packer_compiled.lua
├── tmux
│   └── tmux.conf
└── .zshrc
```
## Zsh

#### Themes
- agnoster
#### Plugins
- zsh-autosuggestions
- zsh-syntax-highlighting
#### etc
- multi command line

#### > Installation & settings  
 ...


## Neovim
> **Requires Neovim (>=0.8)**

#### Installation

#### Plugins
##### Plugin Manager
- wbthomason/packer.nvim

##### Common
- nvim-lua/popup.nvim
- nvim-lua/plenary.nvim
- numToStr/Comment.nvim
- nvim-tree/nvim-web-devicons
- nvim-tree/nvim-tree.lua
- tpope/vim-surround

##### Colorscheme
- EdenEast/nightfox.nvim

##### Status
- feline-nvim/feline.nvim
- romgrk/barbar.nvim

##### Fuzzy Finder
- nvim-telescope/telescope.nvim
- nvim-telescope/telescope-media-files.nvim

##### Auto completion
- hrsh7th/nvim-cmp
- tzachar/cmp-tabnine
- hrsh7th/cmp-buffer
- hrsh7th/cmp-path
- hrsh7th/cmp-cmdline
- saadparwaiz1/cmp_luasnip
- hrsh7th/cmp-nvim-lsp
- hrsh7th/cmp-nvim-lua
- windwp/nvim-autopairs

##### LSP configuration
- neovim/nvim-lspconfig
- williamboman/mason.nvim
- williamboman/mason-lspconfig.nvim
- jose-elias-alvarez/null-ls.nvim
- glepnir/lspsaga.nvim

##### Snippets
- L3MON4D3/LuaSnip
- rafamadriz/friendly-snippets

##### Syntax Highlighting
- nvim-treesitter/nvim-treesitter
- p00f/nvim-ts-rainbow
- nvim-treesitter/playground
- JoosepAlviste/nvim-ts-context-commentstring
- lukas-reineke/indent-blankline.nvim'

##### Terminal
- akinsho/toggleterm.nvim

##### Git
- lewis6991/gitsigns.nvim
- iamcco/markdown-preview.nvim

## Tmux
##### Key bindings
