local winbar = require("yannik.core.winbar")
local winbar_group = vim.api.nvim_create_augroup("WinBar", { clear = true })
vim.api.nvim_create_autocmd({ "BufWinEnter", "BufFilePost", "BufWritePost", "InsertEnter", }, {
    group = winbar_group,
    callback = function()
        winbar.show_winbar()
    end
})
