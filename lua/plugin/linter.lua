return {

  -- Linter
  {
    "mfussenegger/nvim-lint",
    opts = {},
    config = function(_, opts)
      local lint = require("lint")

      lint.linters_by_ft = {
        python = { "pylint" },
        javascript = { "biomejs" },
        typescript = { "biomejs" },
      }

      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
        callback = function()
          lint.try_lint()
        end,
      })
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
          python = { "black", "isort" },
          javascript = { "biome" },
          typescript = { "biome" },
        },
      })
    end,
  },
}
