return {

  -- Sources
  { "hrsh7th/cmp-buffer", },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },

  -- Style
  { "onsails/lspkind.nvim" },

  -- Completion
  {
    "hrsh7th/nvim-cmp",
    opts = {},
    config = function(_, opts)
      local cmp = require("cmp")
      local lspkind = require('lspkind')
      cmp.setup({
        sources = {
          -- { name = 'buffer' },
          { name = 'nvim_lsp' },
          { name = 'path' },
        },
        window = {
          -- completion = cmp.config.window.bordered(),
          -- documentation = cmp.config.window.bordered()
        },
        view = {
          entries = { name = 'custom', selection_order = 'near_cursor' }
        },
        formatting = {
          format = lspkind.cmp_format({
            mode = "text",
            show_labelDetails = true,
            menu = ({
              buffer = "[BUF] ",
              nvim_lsp = "[LSP] ",
              path = "[PAT] "
            })
          }),
        },
      })
      cmp.setup.cmdline({ '/', '?' }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = 'buffer' }
        }
      })
      cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = 'path' }
        }, {
          {
            name = 'cmdline',
            option = {
              ignore_cmds = { 'Man', '!' }
            }
          }
        })
      })
    end
  },
}
