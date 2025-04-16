return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                -- A list of parser names, or "all" (the five listed parsers should always be installed)
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "bash", "markdown", "markdown_inline" },

                -- Install parsers synchronously (only applied to `ensure_installed`)
                sync_install = false,

                -- Automatically install missing parsers when entering buffer
                auto_install = true,

                highlight = {
                    enable = true,
                },
                autotag = {
                    enable = true,
                },
            })

            -- TODO: This config should be handled by nvim-ufo
            -- Fold code using treesitter
            vim.opt.foldmethod = "expr"
            vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
            vim.opt.foldlevel = 1000
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        enabled = true,
        opts = { mode = "cursor", max_lines = 3 },
    },
    {
        "windwp/nvim-ts-autotag",
        --event = "LazyFile",
        opts = {},
    },
}
