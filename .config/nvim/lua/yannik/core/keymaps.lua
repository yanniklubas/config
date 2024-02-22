-- Set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- use 'jk' to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Press 'jk' to exit insert mode" })

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

-- Tab management
keymap.set("n", "<leader>to", "<CMD>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<CMD>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<CMD>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<CMD>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<CMD>tabnew %<CR>", { desc = "Open current buffer in new tab" })
