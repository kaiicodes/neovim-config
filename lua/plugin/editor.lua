return {

  -- File Explorer
  {
    "nvim-tree/nvim-tree.lua",
    opts = {},
    config = function(_, opts)
      require("nvim-tree").setup(opts)
    end
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = "all",
      ignore_install = { "norg" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end
  },

  -- Searching
  {
    "nvim-lua/plenary.nvim",
    config = function(_, opts)
      -- require("").setup()
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = { defaults = { mappings = { i = {} } } },
    config = function(_, opts)
      require("telescope").setup(opts)
    end
  },

  -- Git
  {
    "lewis6991/gitsigns.nvim",
    opts = { current_line_blame = true },
    config = function(_, opts)
      require('gitsigns').setup(opts)
    end
  },

  -- Terminal
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {},
    config = function(_, opts)
      require("toggleterm").setup()
    end
  },

  -- Comment Toggle
  {
    'numToStr/Comment.nvim',
    lazy = false,
    opts = {},
    config = function(_, opts)
      require('Comment').setup(opts)
    end
  },

  -- Pairing
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function(_, opts)
      require("nvim-autopairs").setup()
    end
  },

  -- Utility
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      -- wk.register(opts.defaults)
    end
  },
  {
    "RRethy/vim-illuminate",
    opts = {
      delay = 500,
    },
    config = function(_, opts)
      require("illuminate").configure(opts)
    end
  },

  -- Markdown Viewer
  {
    "OXY2DEV/markview.nvim",
    lazy = false, -- Recommended
    -- ft = "markdown" -- If you decide to lazy-load anyway
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
    opts = {
      markdown = {
        horizontal_rules = {
          parts = {
            {
              type = "repeating",
              repeat_amount = function(buffer)
                local textoff = vim.fn.getwininfo(vim.api.nvim_get_current_win())[1].textoff;
                return math.floor(vim.o.columns - textoff - 3);
              end,
              text = "",
              hl = {
                "MarkviewBlockQuoteDefault",
              },
            },
          }
        },
        headings = {
          shift_width = 0,
          heading_2 = {
            sign = "󰌕",
          },
          heading_3 = {
            sign = "󰌕",
            sign_hl = "MarkviewHeading3Sign",
          },
        },
        list_items = {
          marker_minus = {
            add_padding = false,
            text = "",
            hl = "MarkviewListItemMinus"
          },
          marker_plus = {
            add_padding = false,
            text = "",
            hl = "MarkviewListItemPlus"
          },
          marker_star = {
            add_padding = false,
            text = "",
            hl = "MarkviewListItemStar"
          },
          marker_dot = {
            add_padding = false,
          },
          marker_parenthesis = {
            add_padding = false,
          }
        },
      },
      checkboxes = {
        checked = {
          text = "",
        },
        unchecked = {
          text = "",
        },
      },
    },
    config = function(_, opts)
      require("markview").setup(opts)
    end
  }
}
