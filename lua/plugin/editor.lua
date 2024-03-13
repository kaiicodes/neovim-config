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
      ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "elixir",
        "heex",
        "javascript",
        "html",
        "python" },
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
    opts = {},
    config = function(_, opts)
      require('gitsigns').setup()
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
  }
}
