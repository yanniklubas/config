-- Set leader key to space
vim.g.mapleader = " "
vim.g.mapleaderlocal = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Press `jk` to exit insert mode" })
keymap.set("i", "<C-c>", "<ESC>", { desc = "Make `CTRL+c` and `ESC behave identically" })

-- clear search highlights
keymap.set("n", "<leader>nh", "<CMD>nohl<CR>", { desc = "Clear search highlights" })

-- Increment/Decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

