-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

map("n", "<C-Up>", ":normal! 10k<CR>", { desc = "光标向上移动10行" })
map("i", "<C-Up>", "<Esc>:normal! 10k<CR>a", { desc = "光标向上移动10行" })
map("n", "<C-Down>", ":normal! 10j<CR>", { desc = "光标向下移动10行" })
map("i", "<C-Down>", "<Esc>:normal! 10j<CR>a", { desc = "光标向下移动10行" })

local opt = { noremap = true, silent = true }
local function keymaps(a, b, c, d)
    vim.api.nvim_set_keymap(a, b, c, d)
end
-- keymaps("n", "<C-Up>", ":normal! 10k<CR>", opt)
-- keymaps("i", "<C-Up>", "<Esc>:normal! 10k<CR>a", opt)
-- keymaps("n", "<C-Down>", ":normal! 10j<CR>", opt)
-- keymaps("i", "<C-Down>", "<Esc>:normal! 10j<CR>a", opt)

map("n", "<S-Up>", "10<C-y>", { desc = "向上翻页10行" })
map("i", "<S-Up>", "<Esc>10<C-y><CR>a", { desc = "向下翻页10行" })
map("n", "<S-Down>", "10<C-e>", { desc = "向下翻页10行" })
map("i", "<S-Down>", "<Esc>10<C-e><CR>a", { desc = "向下翻页10行" })

map("i", "<C-v>", '<Esc>"+p', { desc = "粘贴" })
map("n", "<C-v>", '"+p', { desc = "粘贴" })
map("v", "<C-c>", '"+y', { desc = "复制" })

map("n", "<C-y>", '"+yiw', { desc = "一种复制方式" })
map("i", "<C-z>", "<C-r>")
map("n", "<Home>", "^")
map("i", "<Home>", "<C-o>^")

map(
    "n",
    "<leader>ag",
    "<cmd>lua require('fzf-lua').live_grep({fzf_opts = {['--layout'] = 'reverse-list'}})<CR>",
    { desc = "fzf-lua current buffer" }
)
map("n", "<leader>ab", "<cmd>lua require('fzf-lua').lgrep_curbuf()<CR>", { desc = "fzf-lua live_grep" })
map("n", "<leader>af", "<cmd>lua require('fzf-lua').files()<CR>", { desc = "fzf-lua files" })
map("n", "<leader>ar", "<cmd>lua require('fzf-lua').lsp_references()<CR>", { desc = "fzf-lua lsp_references" })
map("n", "<leader>ad", "<cmd>lua require('fzf-lua').lsp_declarations()<CR>", { desc = "fzf-lua lsp_declarations" })
map("n", "<leader>aD", "<cmd>lua require('fzf-lua').lsp_definitions()<CR>", { desc = "fzf-lua lsp_definitions" })
