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
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local path = io.popen("pwd"):read()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup {
        capabilities = capabilities,
      }
      lspconfig.pyright.setup {
        settings = {
          python = {
            pythonPath = path .. "/.venv/bin/python",
          },
        },
        capabilities = capabilities,
      }
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
