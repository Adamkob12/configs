return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Rust support
  {
    "mrcjkb/rustaceanvim",
    version = "^2", -- Recommended
    ft = { "rust" },
  },

  -- Debugging
  {
    "mfussenegger/nvim-dap",
    config = function()
      require "configs.dap"
    end,
  },

  -- Crates.io dependency helper
  { "saecki/crates.nvim",    ft = { "rust", "toml" }, requires = { "nvim-lua/plenary.nvim" } },

  -- Mason for LSP and DAP server management
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "codelldb",
      },
    },
  },

  -- Mason LSP Config for nvim-lspconfig
  { "williamboman/mason-lspconfig.nvim" },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
