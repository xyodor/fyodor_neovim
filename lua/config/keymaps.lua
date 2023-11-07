local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- General
keymap.set("n", "<leader>pv", vim.cmd.Ex)
keymap.set("n", "<leader>w", vim.cmd.w)
keymap.set("n", "q", function()
  vim.cmd.bdelete()
  vim.cmd.bprevious()
end)
keymap.set("n", "<leader>pq", vim.cmd.q)

-- Clipboard
keymap.set("n", "<leader>y", "+y")

-- Directory Navigations
keymap.set("n", "<leader>pt", ":NvimTreeFocus<CR>")
keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>")

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)
keymap.set("n", "L", "<cmd>bn<CR>", opts)
keymap.set("n", "H", "<cmd>bp<CR>", opts)
keymap.set("n", "<leader>l", "<cmd>bn<CR>", opts)
keymap.set("n", "<leader>h", "<cmd>bp<CR>", opts)

-- Window Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts)
keymap.set("n", "<leader>sh", ":split<CR>", opts)
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts)

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false })
