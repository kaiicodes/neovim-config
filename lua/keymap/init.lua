local keymap = {

  -- [[ General ]] --

  { "n", "<leader>s", "<CMD> w <CR>",                                              { desc = "Save file" } },
  { "n", "<leader>w", "<CMD> bp | bd# <CR>",                                       { desc = "Close file" } },
  { "n", "<leader>n", "<CMD> enew <CR>",                                           { desc = "New file" } },
  { "n", "<leader>q", "<CMD> q <CR>",                                              { desc = "Close window" } },
  { "n", "<leader>Q", "<CMD> qa <CR>",                                             { desc = "Exit Nvim" } },

  { "n", "<A-k>",     "<CMD>m .-2<CR>==",                                          { desc = "Move line up", silent = true } },
  { "n", "<A-j>",     "<CMD>m .+1<CR>==",                                          { desc = "Move line down", silent = true } },

  { "v", "<A-k>",     ":m '<-2<CR>gv=gv",                                          { desc = "Move block up", silent = true } },
  { "v", "<A-j>",     ":m '>+1<CR>gv=gv",                                          { desc = "Move block down", silent = true } },

  { "n", '<A-1>',     '<CMD>BufferLineGoToBuffer 1<CR>',                           { desc = "Go to buffer 1" } },
  { "n", '<A-2>',     '<CMD>BufferLineGoToBuffer 2<CR>',                           { desc = "Go to buffer 2" } },
  { "n", '<A-3>',     '<CMD>BufferLineGoToBuffer 3<CR>',                           { desc = "Go to buffer 3" } },
  { "n", '<A-4>',     '<CMD>BufferLineGoToBuffer 4<CR>',                           { desc = "Go to buffer 4" } },
  { "n", '<A-5>',     '<CMD>BufferLineGoToBuffer 5<CR>',                           { desc = "Go to buffer 5" } },
  { "n", '<A-6>',     '<CMD>BufferLineGoToBuffer 6<CR>',                           { desc = "Go to buffer 6" } },
  { "n", '<A-7>',     '<CMD>BufferLineGoToBuffer 7<CR>',                           { desc = "Go to buffer 7" } },
  { "n", '<A-8>',     '<CMD>BufferLineGoToBuffer 8<CR>',                           { desc = "Go to buffer 8" } },
  { "n", '<A-9>',     '<CMD>BufferLineGoToBuffer 9<CR>',                           { desc = "Go to buffer 9" } },

  { "n", "<Esc>",     ":nohlsearch <Esc>",                                         { desc = "", silent = true } },
  { "t", "<Esc>",     "<C-\\><C-n>",                                               { desc = "", silent = true } },

  -- [[ Windows ]] --

  { "n", "<C-h>",     "<C-w>h",                                                    { desc = "Go to left window" } },
  { "n", "<C-l>",     "<C-w>l",                                                    { desc = "Go to right window" } },
  { "n", "<C-j>",     "<C-w>j",                                                    { desc = "Go to lower window" } },
  { "n", "<C-k>",     "<C-w>k",                                                    { desc = "Go to upper window" } },

  { "n", "<C-=>",     "<CMD>horizontal resize +1<CR>",                             { desc = "Increase window height" } },
  { "n", "<C-->",     "<CMD>horizontal resize -1<CR>",                             { desc = "Decrease window height" } },
  { "n", "<C-,>",     "<CMD>vertical resize +1<CR>",                               { desc = "Incrase window width" } },
  { "n", "<C-.>",     "<CMD>vertical resize -1<CR>",                               { desc = "Decrease window width" } },

  -- [[ Utils ]] --

  -- Nvim Tree
  { "n", "<C-e>",     "<CMD> NvimTreeFocus <CR>",                                  { desc = "Nvim Tree Focus" } },
  { "n", "<C-b>",     "<CMD> NvimTreeToggle <CR>",                                 { desc = "Nvim Tree Toggle" } },

  -- Terminal
  { "n", "<S-t>",     "<CMD> ToggleTerm <CR>",                                     { desc = "Toggle Terminal" } },
  { "n", "<S-D-t>",   "<CMD> ToggleTermToggleAll <CR>",                            { desc = "" } },

  -- Which Key
  { "n", "<S-w>",     "<CMD> WhichKey <CR>",                                       { desc = "Which Key" } },

  -- Conform
  { "n", "<leader>F", "<CMD>lua require('conform').format({ async = true }) <CR>", { desc = "[CFM] Format" } },

  -- [[ Vim LSP ]] --

  { "n", "<leader>e",
    "<CMD>lua vim.diagnostic.open_float({source=true,severity_sort=true}) <CR>", { desc = "[LSP] Diagnostics" }
  },
  { "n",          "<leader>h",  "<CMD>lua vim.lsp.buf.hover() <CR>",                 { desc = "[LSP] Hover" } },
  { "n",          "<leader>H",  "<CMD>lua vim.lsp.buf.signature_help() <CR>",        { desc = "[LSP] Help" } },
  { "n",          "<leader>R",  "<CMD>lua vim.lsp.buf.rename() <CR>",                { desc = "[LSP] Rename" } },
  { { "n", "v" }, "<leader>a",  "<CMD>lua vim.lsp.buf.code_action() <CR>",           { desc = "[LSP] Code action" } },
  -- { "n",          "<leader>F",  "<CMD>lua vim.lsp.buf.format({ async = true })<CR>", { desc = "[LSP] Format" } },
  -- { "n",          "gD", "<CMD>lua vim.lsp.buf.declaration() <CR>",           { desc = "[LSP] Declaration" } },
  -- { "n",          "gi", "<CMD>lua vim.lsp.buf.implementation() <CR>",        { desc = "[LSP] Implementations" } },
  -- { "n",          "gt", "<CMD>lua vim.lsp.buf.type_definition() <CR>",       { desc = "[LSP] Type definition" } },
  -- { "n",          "gr", "<CMD>lua vim.lsp.buf.references() <CR>",            { desc = "[LSP] References" } },
  -- { "n",          "gd", "<CMD>lua vim.lsp.buf.definition() <CR>",            { desc = "[LSP] Definition" } },

  -- [[ Telescope ]] --

  -- File
  { "n",          "<leader>o",  "<CMD> Telescope find_files <CR>",                   { desc = "[TELE] Find file" } },
  { "n",          "<leader>f",  "<CMD> Telescope live_grep <CR>",                    { desc = "[TELE] Search global" } },

  -- Vim
  { "n",          "<leader>b",  "<CMD> Telescope buffers<CR>",                       { desc = "[TELE] Current buffer" } },

  -- LSP
  { "n",          "<leader>r",  "<CMD> Telescope lsp_references<CR>",                { desc = "[TELE] References" } },
  { "n",          "<leader>ci", "<CMD> Telescope lsp_incoming_calls<CR>",            { desc = "[TELE] Incoming calls" } },
  { "n",          "<leader>co", "<CMD> Telescope lsp_outgoing_calls<CR>",            { desc = "[TELE] Outgoing calls" } },
  { "n",          "<leader>yd", "<CMD> Telescope lsp_document_symbols<CR>",          { desc = "[TELE] Document symbols" } },
  { "n",          "<leader>yw", "<CMD> Telescope lsp_workspace_symbols<CR>",         { desc = "[TELE] Workspace symbols" } },
  { "n",          "<leader>yx", "<CMD> Telescope lsp_dynamic_workspace_symbols<CR>", { desc = "[TELE] Dynamic workspace symbols" } },
  { "n",          "<leader>E",  "<CMD> Telescope diagnostics<CR>",                   { desc = "[TELE] Diagnostics" } },
  { "n",          "<leader>i",  "<CMD> Telescope lsp_implementations<CR>",           { desc = "[TELE] Implementations" } },
  { "n",          "<leader>d",  "<CMD> Telescope lsp_definitions<CR>",               { desc = "[TELE] Definitions" } },
  { "n",          "<leader>t",  "<CMD> Telescope lsp_type_definitions<CR>",          { desc = "[TELE] Type definitions" } },

  -- Git
  { "n",          "<leader>gs", "<CMD> Telescope git_status<CR>",                    { desc = "[TELE] Git status" } },
}

for _, map in ipairs(keymap) do
  vim.keymap.set(map[1], map[2], map[3], map[4])
end
