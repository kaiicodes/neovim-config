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
      local path = io.popen("pwd"):read()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup {}
      lspconfig.rust_analyzer.setup {}
      lspconfig.pyright.setup {
        settings = {
          python = {
            pythonPath = path .. "/.venv/bin/python",
          },
        },
      }
    end
  },

  -- Linter
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = {
      pylint = {
        diagnostics_postprocess = function(diagnostic)
          diagnostic.code = string.format("%s %s", diagnostic.message_id, diagnostic.code)
        end,
        extra_args = function()
          local venv_path =
              'import sys; import os;' ..
              'version=".".join(map(str, sys.version_info[:2]));' ..
              'sys.path.append(f"{os.getcwd()}/.venv/lib/python{version}/site-packages")'
          return { "--init-hook", venv_path }
        end,
      },
    },
    config = function(_, opts)
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.diagnostics.pylint.with(opts.pylint),
          null_ls.builtins.formatting.black,
        },
      })
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
