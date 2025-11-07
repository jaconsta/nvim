return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {

			{
				"folke/lazydev.nvim",
				ft = "lua", -- only load on lua files
				opts = {
					library = {
						-- See the configuration section for more details
						-- Load luvit types when the `vim.uv` word is found
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
			{ -- optional cmp completion source for require statements and module annotations
				"hrsh7th/nvim-cmp",
				opts = function(_, opts)
					opts.sources = opts.sources or {}
					table.insert(opts.sources, {
						name = "lazydev",
						group_index = 0, -- set group index to 0 to skip loading LuaLS completions
					})
				end,
			},
			{ -- optional blink completion source for require statements and module annotations
				"saghen/blink.cmp",
				version = "1.*",
        dependencies = { 'rafamadriz/friendly-snippets' },
				opts = {
					fuzzy = { implementation = "prefer_rust_with_warning" },
					sources = {
						-- add lazydev to your completion providers
						default = { "lsp", "path", "snippets", "buffer" }, -- removed -> "lazydev" 
						-- providers = {
						-- 	lazydev = {
						-- 		name = "LazyDev",
						-- 		module = "lazydev.integrations.blink",
						-- 		-- make lazydev completions top priority (see `:h blink.cmp`)
						-- 		score_offset = 100,
						-- 	},
						-- },
					},
          keymap = {
            ["<Tab>"] = {
              function(cmp)
                if cmp.snippet_active() then
                  return cmp.accept()
                else
                  return cmp.select_and_accept()
                end
              end,
              "snippet_forward",
              "fallback",
            },
          },
				},
			},
		},

		config = function()
			-- Lua
      vim.lsp.config("lua_ls", {})
			--require("lspconfig").lua_ls.setup({})
			-- Rust
			--require("lspconfig").rust_analyzer.setup({
      vim.lsp.config("rust_analyzer", {
				settings = {
					["rust-analyzer"] = {
						checkOnSave = true,
					},
				},
			})
			vim.lsp.enable("rust_analyzer")

			vim.lsp.enable("ts_ls")

      vim.lsp.enable('svelte')

			-- vim.keymap.set("n", "<leader>e", vim.diagnostic.openfloat, {})
			vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})

			vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, {})
			vim.keymap.set("n", "[d", vim.diagnostic.goto_next, {})
			vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, {})
			--  local opts = { buffer = e.buf }
			--          vim.keymap.set("n", "<leader>e", function() vim.diagnostic.openfloat() end, opts)
			--          vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end, opts)

			--    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
			--    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
			--    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
		end,
	},
}
