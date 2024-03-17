local opts = {
  -- UI
  clipboard = "unnamedplus", -- use the clipboard as the unnamed register
  cmdheight = 1,             -- more space in the neovim command line for displaying messages
  cursorline = true,         -- highlight the screen line of the cursor
  foldlevel = 99,
  foldmethod = "indent",
  hlsearch = true,   -- highlight all matches on previous search pattern
  ignorecase = true, -- ignore case in search patterns
  laststatus = 3,    -- tells when last window has status lines
  mouse = "a",
  number = true,     -- print the line number in front of each line
  numberwidth = 4,
  relativenumber = true,
  ruler = false,    -- show cursor line and column in the status line
  showcmd = false,
  showmode = false, -- message on status line to show current mode
  signcolumn = "yes",
  smartcase = true,
  termguicolors = true,
  title = true, -- set the title of window to the value of the titlestring
  wrap = false,
  -- Indenting
  expandtab = true,   -- use spaces when <Tab> is inserted
  shiftwidth = 2,     -- number of spaces to use for (auto)indent step
  smartindent = true, -- smart autoindenting for C programs
  tabstop = 2,        -- number of spaces that <Tab> in file uses
  softtabstop = 2,    -- number of spaces that <Tab> uses while editing
  -- Spell check
  spell = false,
  spelllang = "en_us",
}

local g = {
  loaded_netrw = 1,
  loaded_netrwPlugin = 1,
  mapleader = " "
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end

for k, v in pairs(g) do
  vim.g[k] = v
end

require 'config.diagnostic'
