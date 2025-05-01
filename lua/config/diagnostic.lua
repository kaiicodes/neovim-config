vim.diagnostic.config({
  -- virtual_text = false,
  severity_sort = true,
  virtual_text = {
    spacing = 1,
    -- source = false,
    prefix = "●",
    format = function(diagnostic)
      -- if diagnostic.severity == vim.diagnostic.severity.ERROR then
      --   return string.format("E: %s", diagnostic.message)
      -- end
      local msg = diagnostic.message
      return string.len(msg) > 50 and string.sub(msg, 1, 50) .. ".." or msg
    end
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.INFO] = " ",
      [vim.diagnostic.severity.HINT] = " ",
    },
    numhl = {
      [vim.diagnostic.severity.ERROR] = "DiagnosticError",
      [vim.diagnostic.severity.WARN] = "DiagnosticWarn",
      [vim.diagnostic.severity.INFO] = "DiagnosticInfo",
      [vim.diagnostic.severity.HINT] = "DiagnosticHint",
    }
  }
})
