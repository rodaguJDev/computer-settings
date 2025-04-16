-- Minimum required configurations for basic nvim experience
-- May be used as a standalone init.lua
vim.g.mapleader = " " -- Set leader key to space

-- 4 space indent
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Better search and replace
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Enable relative line numbers
vim.opt.relativenumber = true
vim.opt.number = true -- Show the absolute number for the current line

-- Set cursor surrounding lines
vim.opt.scrolloff = 8 -- Keep 8 lines visible above and below the cursor

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Yank to system clipboard with <leader>y in normal and visual modes
vim.keymap.set("n", "<leader>y", '"+y', { noremap = true, silent = true })
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true })

-- Delete without yanking with <leader>d in normal and visual modes
vim.keymap.set("n", "<leader>d", '"_d', { noremap = true, silent = true })
vim.keymap.set("v", "<leader>d", '"_d', { noremap = true, silent = true })

-- Change without yanking with <leader>c in normal and visual modes
vim.keymap.set("n", "<leader>c", '"_c', { noremap = true, silent = true })
vim.keymap.set("v", "<leader>c", '"_c', { noremap = true, silent = true })

-- J with cursor retention
vim.keymap.set("n", "J", "mzJ`z", { noremap = true, silent = true })
