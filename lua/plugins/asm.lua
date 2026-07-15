return {
	-- 1. Ensure Treesitter highlights assembly code
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			if type(opts.ensure_installed) == "table" then
				-- Adds syntax highlighting engines for assembly
				vim.list_extend(opts.ensure_installed, { "asm" })
			end
		end,
	},

	-- 2. Set up the Assembly Language Server (asm-lsp)
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				-- Supports x86_64 (Intel & GAS), ARM, and RISC-V architectures
				asm_lsp = {
					filetypes = { "asm", "s", "S" },
				},
				single_file_support = true,
			},
		},
	},
}
