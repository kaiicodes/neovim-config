local opts = {
  -- UI
  laststatus = 3, -- tells when last window has status lines
  termguicolors = true,
  number = true,  -- print the line number in front of each line
  relativenumber = true,
  numberwidth = 4,
  cursorline = true,         -- highlight the screen line of the cursor
  clipboard = "unnamedplus", -- use the clipboard as the unnamed register
  showmode = false,          -- message on status line to show current mode
  cmdheight = 1,             -- more space in the neovim command line for displaying messages
  ruler = false,             -- show cursor line and column in the status line
  hlsearch = true,           -- highlight all matches on previous search pattern
  ignorecase = true,         -- ignore case in search patterns
  title = true,              -- set the title of window to the value of the titlestring
  wrap = false,
  showcmd = false,
  smartcase = true,
  mouse = "a",
  -- Indenting
  expandtab = true,   -- use spaces when <Tab> is inserted
  shiftwidth = 2,     -- number of spaces to use for (auto)indent step
  smartindent = true, -- smart autoindenting for C programs
  tabstop = 2,        -- number of spaces that <Tab> in file uses
  softtabstop = 2,    -- number of spaces that <Tab> uses while editing

  signcolumn = "yes",
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


vim.diagnostic.config({
  virtual_text = false,
  -- virtual_text = {
  --   spacing = 1,
  --   source = true,
  --   prefix = "●",
  --   format = function(diagnostic)
  --     if diagnostic.severity == vim.diagnostic.severity.ERROR then
  --       return string.format("E: %s", diagnostic.message)
  --     end
  --     return diagnostic.message
  --   end
  -- }
})
