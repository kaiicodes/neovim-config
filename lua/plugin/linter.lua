return {

  -- Linter
  {
    "mfussenegger/nvim-lint",
    opts = {},
    config = function(_, opts)
      local function config_pylint(pylint)
        local venv_path = "import sys; import os;"
            .. 'version=".".join(map(str, sys.version_info[:2]));'
            .. 'sys.path.append(f"{os.getcwd()}/.venv/lib/python{version}/site-packages")'
        local extra_args = {
          "--init-hook", venv_path,
          "--disable", "C0114, C0115, C0116",
        }
        for _, arg in pairs(extra_args) do
          table.insert(pylint.args, arg)
        end
      end

      local lint = require("lint")

      lint.linters_by_ft = {
        python = { "pylint" },
      }

      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
        callback = function()
          lint.try_lint()
        end,
      })

      config_pylint(lint.linters.pylint)
    end,
  },

  -- Formatter
  {
    "stevearc/conform.nvim",
    opts = {},
    config = function(_, opts)
      require("conform").setup({
        -- log_level = vim.log.levels.DEBUG,
        formatters_by_ft = {
          lua = { lsp_format = "prefer" },
          python = { "black" },
        },
      })
    end,
  },
}
