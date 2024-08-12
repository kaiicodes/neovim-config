return {

  -- Sources
  {
    "hrsh7th/cmp-buffer",
  },
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "hrsh7th/cmp-path",
  },
  {
    "hrsh7th/cmp-cmdline",
  },

  -- Completion
  {
    "hrsh7th/nvim-cmp",
    opts = {},
    config = function(_, opts)
      local cmp = require("cmp")
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
