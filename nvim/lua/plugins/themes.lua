return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme rose-pine")
            -- vim.cmd("colorscheme rose-pine-moon")
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            -- vim.cmd("colorscheme catppuccin-frappe")
            -- vim.cmd("colorscheme catppuccin-macchiato")
            -- vim.cmd("colorscheme catppuccin-mocha")
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            -- vim.cmd("colorscheme tokyonight")
            -- vim.cmd("colorscheme tokyonight-night")
            -- vim.cmd("colorscheme tokyonight-storm")
            -- vim.cmd("colorscheme tokyonight-moon")
        end,
    },
}
