local opt = vim.opt

-- Relative line numbers
opt.relativenumber = true
opt.number = true

-- Tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true -- expand tabs to spaces
opt.autoindent = true -- keep ident from previous line

-- Line wrapping
opt.wrap = false

-- Search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed cases in search, assume you want a case-sensitive search

-- Cursor line
opt.cursorline = true

opt.termguicolors = false 
opt.signcolumn = "yes"

-- Backspace
opt.backspace = "indent,eol,start" -- remove ident, end of line, and insert mode start position with backspace

-- Clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- Swapfile
opt.swapfile = false
