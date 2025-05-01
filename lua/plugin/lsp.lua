return {

  -- LSP Management
  {
    "williamboman/mason.nvim",
    opts = {},
    config = function(_, opts)
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {},
    config = function(_, opts)
      require("mason-lspconfig").setup()
    end
  },

  -- LSP Config
  {
    "neovim/nvim-lspconfig",
    opts = {},
    config = function(_, opts)
      vim.lsp.enable('pyright')
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('ts_ls')
    end
  },

  -- Diagnostics
  {
    "folke/trouble.nvim",
    opts = {},
    config = function(_, opts)
      require('trouble').setup()
    end
  }
}
