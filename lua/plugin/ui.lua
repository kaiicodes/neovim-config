return {

  -- Colortheme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },
  {
    "sainnhe/sonokai",
  },

  -- Status Line
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      sections = {
        lualine_c = {
          {
            'filename',
            path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
          }
        }
      }
    },
    config = function(_, opts)
      require("lualine").setup(opts)
    end
  },

  -- Buffer Line
  {
    'akinsho/bufferline.nvim',
    opts = {
      options = {
        numbers = "ordinal",
        offsets = {
          {
            filetype = "NvimTree",
            separator = true
          },
        },
        show_buffer_close_icons = false,
      },
    },
    config = function(_, opts)
      require("bufferline").setup(opts)
    end
  },

  -- Indentation Guide
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = {
        -- char = "│",
        -- tab_char = "│",
      },
      scope = { enabled = false },
    },
    config = function(_, opts)
      require("ibl").setup(opts)
    end
  },

  -- Icons
  {
    'nvim-tree/nvim-web-devicons',
    config = function(_, opts)
      require("nvim-web-devicons").setup()
    end
  },

  -- Menu Overhaul
  {
    "MunifTanjim/nui.nvim",
  },
  {
    'rcarriga/nvim-notify',
    opts = {
      minimum_width = 0,
      fps = 60,
      stages = "fade",
      timeout = 3000,
    },
    config = function(_, opts)
      vim.notify = require("notify").setup(opts)
    end
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts)
      require("noice").setup()
    end
  },
}
