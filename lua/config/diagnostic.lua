local signs = { Error = " ", Info = " ", Hint = " ", Warn = " " }
for name, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. name
  vim.fn.sign_define(hl, { text = icon, numhl = hl, texthl = hl })
end

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
    severity_sort = true
  }
})
