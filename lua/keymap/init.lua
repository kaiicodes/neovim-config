local keymap = {
  { "n",          "<C-h>",     "<C-w>h",                                                 { desc = "Go to left window" } },
  { "n",          "<C-l>",     "<C-w>l",                                                 { desc = "Go to right window" } },
  { "n",          "<C-j>",     "<C-w>j",                                                 { desc = "Go to lower window" } },
  { "n",          "<C-k>",     "<C-w>k",                                                 { desc = "Go to upper window" } },

  { "n",          "<leader>s", "<CMD> w <CR>",                                           { desc = "" } },
  { "n",          "<leader>w", "<CMD> bd <CR>",                                          { desc = "" } },
  { "n",          "<leader>n", "<CMD> enew <CR>",                                        { desc = "" } },

  { "n",          "<Esc>",     ":nohlsearch <Esc>",                                      { desc = "", silent = true } },

  { "n",          "<A-j>",     "<CMD>m .+1<CR>==",                                       { desc = "", silent = true } },
  { "n",          "<A-k>",     "<CMD>m .-2<CR>==",                                       { desc = "", silent = true } },

  { "n",          "<C-e>",     "<CMD> NvimTreeFocus <CR>",                               { desc = "Nvim Tree Focus" } },
  { "n",          "<C-b>",     "<CMD> NvimTreeToggle <CR>",                              { desc = "Nvim Tree Toggle" } },

  { "n",          "<leader>f", "<CMD> Telescope find_files <CR>",                        { desc = "" } },
  { "n",          "<leader>g", "<CMD> Telescope live_grep <CR>",                         { desc = "" } },

  { "n",          "<leader>r", "<CMD> Telescope lsp_references<CR>",                     { desc = "" } },
  { "n",          "<leader>e", "<CMD> Telescope diagnostics<CR>",                        { desc = "" } },
  { "n",          "<leader>i", "<CMD> Telescope lsp_implementations<CR>",                { desc = "" } },
  { "n",          "<leader>d", "<CMD> Telescope lsp_definitions<CR>",                    { desc = "" } },
  { "n",          "<leader>t", "<CMD> Telescope lsp_type_definitions<CR>",               { desc = "" } },
  -- { "n",          "<leader>g", "<CMD> Telescope lsp_incoming_calls<CR>",                 { desc = "" } },
  -- { "n",          "<leader>g", "<CMD> Telescope lsp_outgoing_calls<CR>",                 { desc = "" } },
  -- { "n",          "<leader>g", "<CMD> Telescope lsp_document_symbols<CR>",               { desc = "" } },
  -- { "n",          "<leader>g", "<CMD> Telescope lsp_workspace_symbols<CR>",              { desc = "" } },
  -- { "n",          "<leader>g", "<CMD> Telescope lsp_dynamic_workspace_symbols<CR>",      { desc = "" } },

  { "n",          "ge",        "<CMD>lua vim.diagnostic.open_float({source=true}) <CR>", { desc = "" } },
  { "n",          "gD",        "<CMD>lua vim.lsp.buf.declaration() <CR>",                { desc = "" } },
  { "n",          "gd",        "<CMD>lua vim.lsp.buf.definition() <CR>",                 { desc = "" } },
  { "n",          "gk",        "<CMD>lua vim.lsp.buf.hover() <CR>",                      { desc = "" } },
  { "n",          "gi",        "<CMD>lua vim.lsp.buf.implementation() <CR>",             { desc = "" } },
  { "n",          "gh",        "<CMD>lua vim.lsp.buf.signature_help() <CR>",             { desc = "" } },
  { "n",          "gt",        "<CMD>lua vim.lsp.buf.type_definition() <CR>",            { desc = "" } },
  { "n",          "gR",        "<CMD>lua vim.lsp.buf.rename() <CR>",                     { desc = "" } },
  { { "n", "v" }, "ga",        "<CMD>lua vim.lsp.buf.code_action() <CR>",                { desc = "" } },
  { "n",          "gr",        "<CMD>lua vim.lsp.buf.references() <CR>",                 { desc = "" } },
  { "n",          "gf",        "<CMD>lua vim.lsp.buf.format({ async = true })<CR>",      { desc = "" } },

  { "n",          "<S-t>",     "<CMD> ToggleTerm <CR>",                                  { desc = "" } },
  { "n",          "<S-D-t>",   "<CMD> ToggleTermToggleAll <CR>",                         { desc = "" } },

  { "n",          "<S-w>",     "<CMD> WhichKey <CR>",                                    { desc = "" } },

  { "n",          '<A-1>',     '<CMD>BufferLineGoToBuffer 1<CR>' },
  { "n",          '<A-2>',     '<CMD>BufferLineGoToBuffer 2<CR>' },
  { "n",          '<A-3>',     '<CMD>BufferLineGoToBuffer 3<CR>' },
  { "n",          '<A-4>',     '<CMD>BufferLineGoToBuffer 4<CR>' },
  { "n",          '<A-5>',     '<CMD>BufferLineGoToBuffer 5<CR>' },
  { "n",          '<A-6>',     '<CMD>BufferLineGoToBuffer 6<CR>' },
  { "n",          '<A-7>',     '<CMD>BufferLineGoToBuffer 7<CR>' },
  { "n",          '<A-8>',     '<CMD>BufferLineGoToBuffer 8<CR>' },
  { "n",          '<A-9>',     '<CMD>BufferLineGoToBuffer 9<CR>' },


  { "v",          "<A-j>",     ":m '>+1<CR>gv=gv",                                       { desc = "", silent = true } },
  { "v",          "<A-k>",     ":m '<-2<CR>gv=gv",                                       { desc = "", silent = true } },

  { "t",          "<Esc>",     "<C-\\><C-n>",                                            { desc = "", silent = true } },
}

for _, map in ipairs(keymap) do
  vim.keymap.set(map[1], map[2], map[3], map[4])
end
