return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			c = { "cpplint" },
			cpp = { "cpplint" },
			go = { "revive" },
			javascript = { "biomejs" },
			javascriptreact = { "biomejs" },
			lua = { "luacheck" },
			markdown = { "write_good" },
			python = { "ruff" },
			sh = { "shellcheck" },
			typescript = { "biomejs" },
			typescriptreact = { "biomejs" },
			yaml = { "yamllint" },
			["*"] = { "typos" },
		}

		local group = vim.api.nvim_create_augroup("__lint__", { clear = true })
		vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
			group = group,
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
