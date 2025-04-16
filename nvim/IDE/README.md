# Neovim RC

Version control of my [neovim](https://neovim.io/) awesome config.

# Recomendations

1. A [Nerd Font](https://www.nerdfonts.com) for icon rendering
2. A C compiler in PATH (gcc, cc or clang for example, required for treesitter)
    1. On Windows, you may use [MSYS2](https://www.freecodecamp.org/news/how-to-install-c-and-cpp-compiler-on-windows/)
       or [Visual Studio's Native Tools Command Prompt](https://learn.microsoft.com/en-us/cpp/build/building-on-the-command-line?view=msvc-170)
    2. The [treesitter guide](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support) has more ways of installing on windows
3. NodeJS/NPM required for downloading LSPs through Mason
4. If on Linux, install [xclip](https://github.com/astrand/xclip) through your package manager

# Customizations

Some of the customizations include:

-   Relative line numbers
-   4 space indenting
-   8 line scrolloff
-   24 bit terminal colors
-   80 character column
-   Remove line wrapping
-   Better search highlight
-   Pressing `J` no longer moves the cursor to the end of the line
-   Search Next and Previous moves the mouse to the middle (using `zz`)
-   Scrolling up and down with `C-u` and `C-d` moves mouse to the middle (using `zz`)
-   Folding is enabled, and uses the treesitter algorithm
-   For more details, see /lua/prefs.lua

# Keybinds

Note: `<leader>` is `<space>` by default

## LSP

-   Go to variable definition: `gd`
-   Get element hover documentation: `K`
-   Open Code Action menu: `<leader>ca`
-   Rename variable: `<leader>rn`

## Auto Complete

-   Force open autocomplete menu: `<C-space>` _insert mode_
-   Cycle through complete options forwards: `<TAB>`
-   Cycle through complete options backwards: `<S-TAB>`
-   Select completion: `<CR>`

## Formatter and Linter

-   Format current buffer: `<leader>gf`

## Telescope

-   Open Telescope file browser: `<leader>pv`
-   Open Telescope fuzzy finder: `<leader>pf`
-   Open Telescope live grep search: `<leader>ps`
-   Open Telescope git project fuzzy finder: `<C-p>`

## Telescope file browser (on normal mode)

-   Create file/folder: `c`
-   Delete hovered file: `d`
-   Open using system app: `o`
-   Toggle hidden files: `h`
-   Go to parent dir: `<bs>` _insert mode_
-   Go to folder browser mode: `f`
-   Check the [repo](https://github.com/nvim-telescope/telescope-file-browser.nvim) for all keybinds

## Surround and Comments

-   Comment line: `gcc`
-   Comment visual mode: `gc`
-   Surround with character: `sa` followed by surrond character
    -   example: WORD + `saiw"` = "WORD"
    -   works with visual mode
-   Remove surrounding: `sd` followed by surround character
    -   example: "WORD" + `sd"` = WORD
-   Replace surround: `sr` followed by surrond character
    -   example: "WORD" + `sr(` = (WORD)

## Folding

-   Toggle line fold: `za`
-   \[WIP]

## Misc

-   Delete or Change without overriding memory
    1.  `<leader>d`
    2.  `<leader>c`
-   Yank to system clipboard: `<leader>y`
-   Notification Dismiss: `<leader>nc`
-   Move visual line up and down: `S-J` or `S-K`

# Plugins

Plugin Manager: [lazy.nvim](https://github.com/folke/lazy.nvim)

## LSP

Language Servers for neovim, used by linters, formatters and autocompletion

1. [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
2. [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
3. [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
4. [folke/neodev.nvim](https://github.com/folke/neodev.nvim)

## Auto Completion

1. [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
    1. [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
    2. [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
    3. [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
    4. [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
2. [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
    1. [saadparwaiz1/cmp-luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
3. [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)

## NoneLS

Linter and Formatter

1. [nvimtools/none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)

## Editor

Plugins for coding productivity outside auto completion

1. [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
    1. Install [ripgrep](https://github.com/BurntSushi/ripgrep) for live grep search
    2. [nvim-telescope/telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)
    3. [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)
2. [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)
3. [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
4. [echasnovski/mini.pairs](https://github.com/echasnovski/mini.pairs)
5. [echasnovski/mini.comment](https://github.com/echasnovski/mini.comment)
    1. [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
6. [echasnovski/mini.surround](https://github.com/echasnovski/mini.surround)
    1. **NOTE: This plugin is very useful, but it might take a little while to get used to**

## Treesitter

Better colors, very useful API and tools

1. [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
2. [nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
3. [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)

## UI

Plugins for a fancier editor

1. [folke/noice.nvim](https://github.com/folke/noice.nvim)
    1. [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
2. [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
3. [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)

## Colorscheme

Themes for neovim

1. [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
2. [catppuccin/nvim](https://github.com/catppuccin/nvim)
3. [rose-pine/neovim](https://github.com/rose-pine/neovim) _default_

## Not Included

Plugins that could be added some day but were not deemed necessary

1. [echasnovski/mini.ai](https://github.com/echasnovski/mini.ai)

# Work in progress

My config is not yet done, here is a list of what's to come

1. Install [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo) for better code folding
2. Installing [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
3. Replacing mini.surround with [nvim-surround](https://github.com/kylechui/nvim-surround) because it supports tags
