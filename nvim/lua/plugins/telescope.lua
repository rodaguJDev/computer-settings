return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        -- or                              , branch = '0.1.x',
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
            vim.keymap.set("n", "<C-p>", builtin.git_files, {})
            vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").setup({
                extensions = {
                    file_browser = {
                        theme = "ivy",
                        -- disables netrw and use telescope-file-browser in its place
                        hijack_netrw = true,
                        mappings = {
                            ["i"] = {
                                -- your custom insert mode mappings
                            },
                            ["n"] = {
                                -- your custom normal mode mappings
                            },
                        },
                    },
                },
            })
            -- To get telescope-file-browser loaded and working with telescope,
            -- you need to call load_extension, somewhere after setup function:
            require("telescope").load_extension("file_browser")
        end,
    },
}
