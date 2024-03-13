return {
  -- Colortheme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },
  -- Status Line
  {
    'nvim-lualine/lualine.nvim',
    config = function(_, opts)
      require("lualine").setup()
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
        char = "│",
        tab_char = "│",
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
