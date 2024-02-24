return {
	"mhartington/formatter.nvim",
	config = function()
		local lsp_format = function()
			if vim.api.nvim_get_mode().mode == "v" then
				vim.lsp.buf.format({
					async = true,
					["start"] = vim.api.nvim_buf_get_mark(0, "<"),
					["end"] = vim.api.nvim_buf_get_mark(0, ">"),
				})
			else
				vim.lsp.buf.format({ async = true })
			end
		end

		local lsp_fallback = function()
			local defined_fmts = require("formatter.config").values.filetype
			-- Check if this filetype already has a configured formatter
			if defined_fmts[vim.bo.filetype] ~= nil then
				return nil
			end
			lsp_format()
		end
		require("formatter").setup({
			filetype = {
				c = {
					require("formatter.filetypes.c").clangformat,
				},
				cpp = {
					require("formatter.filetypes.cpp").clangformat,
				},
				css = {
					require("formatter.filetypes.css").prettierd,
				},
				go = {
					require("formatter.filetypes.go").gofumpt,
					require("formatter.filetypes.go").goimports,
					require("formatter.filetypes.go").gofmt,
				},
				html = {
					require("formatter.filetypes.html").prettierd,
				},
				javascript = {
					require("formatter.filetypes.javascript").biome,
				},
				javascriptreact = {
					require("formatter.filetypes.javascriptreact").biome,
				},
				lua = {
					require("formatter.filetypes.lua").stylua,
				},
				markdown = {
					require("formatter.filetypes.markdown").prettierd,
				},
				python = {
					require("formatter.filetypes.python").ruff,
				},
				rust = {
					require("formatter.filetypes.rust").rustfmt,
				},
				sh = {
					require("formatter.filetypes.sh").shfmt,
				},
				typescript = {
					require("formatter.filetypes.typescript").biome,
				},
				typescriptreact = {
					require("formatter.filetypes.typescriptreact").biome,
				},
				yaml = {
					require("formatter.filetypes.yaml").yamlfmt,
				},
				zsh = {
					require("formatter.filetypes.zsh").beautysh,
				},
				["*"] = {
					require("formatter.filetypes.any").remove_trailing_whitespace,
					lsp_fallback,
				},
			},
		})

		local group = vim.api.nvim_create_augroup("__formatter__", { clear = true })
		vim.api.nvim_create_autocmd("BufWritePost", {
			group = group,
			command = ":FormatWriteLock",
		})
		local keymap = vim.keymap.set
		keymap(
			{ "n", "v" },
			"<leader>lf",
			"<CMD>FormatWriteLock<CR>",
			{ noremap = true, silent = true, desc = "[L]SP [F]ormat file" }
		)
	end,
}
